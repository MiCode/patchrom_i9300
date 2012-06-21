.class public Lcom/android/internal/policy/impl/SignatureLockScreen;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;,
        Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;,
        Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x2

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SignatureLockScreen"

.field private static mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;


# instance fields
.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEngineStarted:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerificationLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    .line 73
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 349
    new-instance v2, Lcom/android/internal/policy/impl/SignatureLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SignatureLockScreen$1;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 90
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 91
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 92
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCreationOrientation:I

    .line 97
    const/4 v12, 0x0

    .line 98
    .local v12, statementString:Ljava/lang/String;
    :try_start_0
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v9, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 99
    .local v9, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v12

    .line 100
    const-string v2, "SignatureLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentLockScreenString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v2, 0x102033f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 103
    .local v11, statement:Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 104
    if-eqz v12, :cond_2

    .line 105
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v9           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v11           #statement:Landroid/widget/TextView;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setFocusable(Z)V

    .line 119
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setFocusableInTouchMode(Z)V

    .line 120
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setDescendantFocusability(I)V

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 123
    .local v10, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 125
    const v2, 0x1090076

    const/4 v3, 0x1

    invoke-virtual {v10, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 135
    :goto_1
    const v2, 0x1020356

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mRootLayout:Landroid/widget/FrameLayout;

    .line 138
    const v2, 0x102035a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    const v3, 0x104065c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v7, 0x1

    move-object v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 146
    new-instance v2, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 151
    const v2, 0x1020357

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->initSignView(Landroid/content/Context;)V

    .line 162
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v2, :cond_1

    .line 163
    const-string v2, "SignatureLockScreen"

    const-string v3, "sign service is called from constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 167
    :cond_1
    return-void

    .line 110
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v11       #statement:Landroid/widget/TextView;
    :cond_2
    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v9           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v11           #statement:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    .line 114
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "SignatureLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM Exception Statement :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    const v2, 0x1090077

    const/4 v3, 0x1

    invoke-virtual {v10, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SignatureLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initSignView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 170
    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sput-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 172
    const v1, 0x1020358

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SignView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    .line 174
    const/16 v1, 0x8

    new-array v0, v1, [I

    .line 175
    .local v0, signatureInfo:[I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSignatureCorrnidates([I)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_signature_verification_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mVerificationLevel:I

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    iget v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mVerificationLevel:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setStrokeCount(I)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v2, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/impl/SignatureLockScreen$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 192
    return-void
.end method


# virtual methods
.method public bindToSignatureLock()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 347
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    const-string v0, "SignatureLockScreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 271
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 275
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 281
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v1, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return v1

    .line 201
    :cond_0
    const-string v0, ""

    .line 202
    .local v0, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 206
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSignatureRecognitionFailed()Z
    .locals 2

    .prologue
    .line 393
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 238
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 248
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 330
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 287
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 290
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 301
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 305
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 253
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 259
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 263
    :cond_0
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 319
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 310
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 314
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 219
    :pswitch_1
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN, ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_0

    .line 222
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    goto :goto_0

    .line 228
    :pswitch_2
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

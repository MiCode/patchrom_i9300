.class public Lcom/android/OriginalSettings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private isShowPassword:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHideSsid:Landroid/widget/CheckBox;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mMaxclient_Num:Landroid/widget/Spinner;

.field private mMaxclient_Title:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxclient:I

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    const v0, 0x7f0f002b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 73
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedMaxclient:I

    .line 91
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 93
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 94
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 99
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowPassword:Z

    .line 390
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 425
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 107
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 109
    if-eqz p3, :cond_0

    .line 110
    invoke-static {p3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 112
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"
    .parameter "tempWifiConfig"
    .parameter "permitDismiss"
    .parameter "continueOpen"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 124
    const v0, 0x7f0f002b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 73
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedMaxclient:I

    .line 91
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 93
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 94
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 99
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 102
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowPassword:Z

    .line 390
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 425
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 125
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    if-eqz p4, :cond_2

    .line 127
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 133
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApDialog2 - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   permitDismiss ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   continueOpen ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-boolean p5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 136
    if-eqz p6, :cond_3

    .line 137
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 143
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 150
    :cond_1
    return-void

    .line 129
    :cond_2
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 138
    :cond_3
    if-nez p6, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 139
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/WifiApDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 154
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x2

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 5

    .prologue
    const v4, 0x7f0a0279

    .line 572
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSecurityFields - mSecurityTypeIndex ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mDismissIfOpen ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 576
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 577
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 581
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 601
    :goto_0
    return-void

    .line 585
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 586
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 588
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 589
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 590
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 594
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a027a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 462
    const/4 v2, 0x0

    .line 463
    .local v2, trimedSsidLength:I
    const/4 v1, 0x0

    .line 464
    .local v1, trimedPasswordLength:I
    const/4 v0, 0x1

    .line 466
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 469
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x0

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 475
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 478
    :cond_2
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    :cond_4
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_7

    .line 480
    :cond_6
    const/4 v0, 0x0

    .line 483
    :cond_7
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 524
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 520
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 172
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 178
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 179
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 185
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 187
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 192
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 200
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 201
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 371
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_2
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 377
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 380
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 381
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const v4, 0x7f0a027c

    const/4 v3, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 514
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 489
    .restart local p1
    :pswitch_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x90

    :goto_1
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 494
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 496
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 489
    .end local v1           #password:Ljava/lang/String;
    :cond_1
    const/16 v2, 0x80

    goto :goto_1

    .line 499
    .restart local p1
    :pswitch_2
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 508
    .restart local p1
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 509
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    const v2, 0x7f0d02b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0277
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0a027d

    const v8, 0x7f0a027a

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 269
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0278

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 271
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 272
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    .local v0, context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 277
    const v2, 0x7f0d0344

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setTitle(I)V

    .line 278
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0276

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 281
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a024d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 282
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 284
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0277

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    .line 285
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 290
    const/4 v2, -0x1

    const v3, 0x7f0d02c6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 291
    const/4 v2, -0x2

    const v3, 0x7f0d02c7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 305
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 328
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a027b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 334
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 340
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a027e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMaxclient_Title:Landroid/widget/TextView;

    .line 341
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a027f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    .line 350
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMaxclient_Title:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 354
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 356
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 357
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 358
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 534
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 536
    :sswitch_0
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 554
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 555
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 558
    :sswitch_1
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 562
    :sswitch_2
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedMaxclient:I

    goto :goto_0

    .line 534
    :sswitch_data_0
    .sparse-switch
        0x7f0a0278 -> :sswitch_0
        0x7f0a027d -> :sswitch_1
        0x7f0a027f -> :sswitch_2
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 517
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0a027a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 616
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0278

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 617
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 619
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 620
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 621
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 628
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 624
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 625
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 626
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOpenWarningFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 528
    return-void
.end method

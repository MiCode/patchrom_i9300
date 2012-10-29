.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mButtonOk:Landroid/widget/Button;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/EditText;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field macWatcher:Landroid/text/TextWatcher;

.field nameWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "mac"
    .parameter "listener"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    .line 155
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->macWatcher:Landroid/text/TextWatcher;

    .line 59
    iput p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    .line 60
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const v6, 0x7f0d0262

    const v5, 0x7f0a0287

    const/16 v4, 0x8

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    .line 75
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    .line 76
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    .line 78
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v1, :cond_0

    .line 79
    const v1, 0x7f0d025c

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 80
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d04ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->macWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    .line 117
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    .line 118
    return-void

    .line 83
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v1, v8, :cond_1

    .line 84
    const v1, 0x7f0d025c

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 85
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 90
    const v1, 0x7f0d0260

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 91
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    .line 97
    .local v0, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    .end local v0           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_2
    const v1, 0x7f0d0213

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 101
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

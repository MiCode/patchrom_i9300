.class public Lcom/android/OriginalSettings/MediaFormat;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsUSBOTGStorage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/MediaFormat;->mIsUSBOTGStorage:Z

    .line 59
    new-instance v0, Lcom/android/OriginalSettings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/MediaFormat$1;-><init>(Lcom/android/OriginalSettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/android/OriginalSettings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/MediaFormat$2;-><init>(Lcom/android/OriginalSettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 128
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 130
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mIsUSBOTGStorage:Z

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x7f0d0914

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-boolean v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mIsUSBOTGStorage:Z

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x7f0d0912

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0d0913

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 172
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 84
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Lcom/android/OriginalSettings/BaseActivity;)V

    const v1, 0x7f0d044b

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d044c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/OriginalSettings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 102
    :cond_1
    if-nez p2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MediaFormat;->finish()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    iput-object v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 180
    iput-object v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 181
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mIsUSBOTGStorage:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 186
    .local v0, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, subsystem:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 188
    const-string v2, "usb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const v2, 0x7f0d0909

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/MediaFormat;->setTitle(I)V

    .line 190
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/OriginalSettings/MediaFormat;->mIsUSBOTGStorage:Z

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/MediaFormat;->establishInitialState()V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 206
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/OriginalSettings/MediaFormat;->establishInitialState()V

    .line 209
    :cond_0
    return-void
.end method

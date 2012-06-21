.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceUnlockView"
.end annotation


# instance fields
.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mResId:I

.field private mStatusImg:Landroid/widget/ImageView;

.field private mVolumeImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/Context;Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "configuration"
    .parameter "isPattern"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2446
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .line 2447
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2444
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    .line 2449
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2450
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz p4, :cond_1

    .line 2451
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 2452
    const v1, 0x109007a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2462
    :goto_0
    const v1, 0x1020361

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    .line 2463
    const v1, 0x1020364

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    .line 2464
    const v1, 0x1020363

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    .line 2465
    const v1, 0x1020362

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    .line 2475
    return-void

    .line 2454
    :cond_0
    const v1, 0x1090079

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 2456
    :cond_1
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 2457
    const v1, 0x109007c

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 2459
    :cond_2
    const v1, 0x109007b

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public setErrorMsg()V
    .locals 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x104066d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2491
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108041d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2494
    return-void
.end method

.method public setPrepareMsg()V
    .locals 2

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104066c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x1040670

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2480
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108041b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2482
    return-void
.end method

.method public setRecognitionMsg()V
    .locals 2

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104066c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2486
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108041b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2487
    return-void
.end method

.method public setSuccessMsg()V
    .locals 2

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x104066f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2498
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108041c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2499
    return-void
.end method

.method public updateVolumeBg(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 2502
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    if-eq v0, p1, :cond_0

    .line 2504
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    .line 2505
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2507
    :cond_0
    return-void
.end method

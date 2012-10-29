.class public Lcom/android/OriginalSettings/VibrationFeedbackPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VibrationFeedbackPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final SEEKBAR_ID:[I


# instance fields
.field private currentLevel:I

.field private mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

.field private mHapticFeedbackVibrationIntensity:I

.field private mIncomingCallSeekBar:Landroid/widget/SeekBar;

.field private mIncomingCallVibrationIntensity:I

.field private mNotificationSeekBar:Landroid/widget/SeekBar;

.field private mNotificationVibrationIntensity:I

.field private mOldHapticFeedbackVibrationSlideLevel:I

.field private mOldIncomingCallVibrationSlideLevel:I

.field private mOldNotificationVibrationSlideLevel:I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x85t 0x1t 0xat 0x7ft
        0x86t 0x1t 0xat 0x7ft
        0x87t 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 70
    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setDialogLayoutResource(I)V

    .line 71
    return-void
.end method

.method private setHapticFeedbackVibrationIntensity(I)V
    .locals 3
    .parameter "vibrationIntensityLevel"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackVibrationIntensity : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private setIncomingCallVibrationIntensity(I)V
    .locals 3
    .parameter "vibrationIntensityLevel"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallVibrationIntensity : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method private setNotificationVibrationIntensity(I)V
    .locals 3
    .parameter "vibrationIntensityLevel"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationVibrationIntensity : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    sget-object v1, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    .line 78
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    const v1, 0x7f0a0184

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, incomingCallText:Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 86
    .end local v0           #incomingCallText:Landroid/widget/TextView;
    :cond_1
    sget-object v1, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    .line 87
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 88
    sget-object v1, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    .line 89
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    .line 94
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 95
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    .line 99
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    .line 104
    iget v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    iput v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 105
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 111
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 113
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    .line 176
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    .line 181
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    .line 186
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    .line 187
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 119
    .local v0, isdown:Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 133
    :cond_0
    :goto_1
    return v1

    .end local v0           #isdown:Z
    :cond_1
    move v0, v2

    .line 118
    goto :goto_0

    .line 121
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    if-lez v2, :cond_0

    .line 122
    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 123
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 127
    :pswitch_1
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 128
    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 129
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateCall(I)V

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateNotification(I)V

    goto :goto_0

    .line 151
    :cond_1
    iput p2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 152
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 160
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 164
    return-void
.end method

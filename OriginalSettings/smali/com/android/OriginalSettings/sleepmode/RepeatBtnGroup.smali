.class public Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;
.super Landroid/widget/FrameLayout;
.source "RepeatBtnGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$OnChangedListener;
    }
.end annotation


# static fields
.field private static final sDaysShortest:[I


# instance fields
.field mChangedListener:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$OnChangedListener;

.field private mFri:Landroid/widget/ToggleButton;

.field private mMon:Landroid/widget/ToggleButton;

.field private mSat:Landroid/widget/ToggleButton;

.field private mSun:Landroid/widget/ToggleButton;

.field private mThu:Landroid/widget/ToggleButton;

.field private mTue:Landroid/widget/ToggleButton;

.field private mWed:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x6et 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
        0x72t 0x0t 0x4t 0x1t
        0x73t 0x0t 0x4t 0x1t
        0x74t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 71
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400b7

    const/4 v5, 0x1

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    const v4, 0x7f0a0216

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    .line 75
    const v4, 0x7f0a0217

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    .line 77
    const v4, 0x7f0a0218

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    .line 79
    const v4, 0x7f0a0219

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    .line 81
    const v4, 0x7f0a021a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    .line 83
    const v4, 0x7f0a021b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    .line 85
    const v4, 0x7f0a021c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    .line 87
    new-instance v3, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;-><init>(Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;)V

    .line 96
    .local v3, soundCL:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 112
    .local v2, r:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x7

    if-ge v0, v4, :cond_0

    .line 113
    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 119
    :pswitch_1
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 123
    :pswitch_2
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :pswitch_3
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 131
    :pswitch_4
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 135
    :pswitch_5
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 139
    :pswitch_6
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 148
    :cond_0
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getCheckDay()I
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    or-int/lit16 v0, v0, 0x1000

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    or-int/lit16 v0, v0, 0x100

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_5

    .line 230
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    or-int/lit8 v0, v0, 0x10

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    .line 235
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 236
    or-int/lit8 v0, v0, 0x1

    .line 239
    :cond_6
    return v0
.end method

.method public setCheckDay(I)V
    .locals 6
    .parameter "repeat"

    .prologue
    const/high16 v5, 0x100

    const/high16 v4, 0x10

    const/high16 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 152
    and-int v0, p1, v5

    if-ne v0, v5, :cond_7

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 159
    and-int v0, p1, v4

    if-ne v0, v4, :cond_8

    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 165
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    .line 166
    and-int v0, p1, v1

    if-ne v0, v1, :cond_9

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 172
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    .line 173
    and-int/lit16 v0, p1, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 179
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    .line 180
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_b

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 186
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    .line 187
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 193
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    .line 194
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_d

    .line 195
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 199
    :cond_6
    :goto_6
    return-void

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2

    .line 176
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_3

    .line 183
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_4

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_5

    .line 197
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_6
.end method

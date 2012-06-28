.class public Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;
.super Landroid/preference/Preference;
.source "SleepingModePreference.java"


# static fields
.field private static final sDaysShortest:[I


# instance fields
.field private mListDayColorActive:I

.field private mListDayColorInactive:I

.field private mPreferenceView:Landroid/widget/LinearLayout;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->sDaysShortest:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x74t 0x0t 0x4t 0x1t
        0x73t 0x0t 0x4t 0x1t
        0x72t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x6et 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const v1, 0x7f0400b6

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->setLayoutResource(I)V

    .line 67
    const-string v1, "key_sleeping_mode_pref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mListDayColorActive:I

    .line 72
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mListDayColorInactive:I

    .line 73
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v0, 0x7f0a0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    .line 82
    return-void
.end method

.method public refreshSleepingModeList()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 170
    return-void
.end method

.method public timeFormatToString(II)Ljava/lang/String;
    .locals 6
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v5, 0xc

    .line 173
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 174
    .local v0, is24H:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, mAmPm:Ljava/lang/String;
    move v2, p1

    .line 177
    .local v2, mHour:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p1, 0xa

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_2
    return-object v3

    .line 178
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 181
    :cond_2
    if-lt p1, v5, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    if-le p1, v5, :cond_3

    add-int/lit8 v2, p1, -0xc

    .line 186
    :cond_3
    if-nez p1, :cond_4

    const/16 v2, 0xc

    .line 188
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4
.end method

.method public updateSleepingMode()V
    .locals 15

    .prologue
    .line 85
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_sleeping_mode_is_set"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 86
    .local v5, isSleepingModeChecked:Z
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_start_hour"

    const/16 v14, 0x17

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 87
    .local v8, sh:I
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_start_minute"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 88
    .local v9, sm:I
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_end_hour"

    const/4 v14, 0x7

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 89
    .local v2, eh:I
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_end_minute"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 91
    .local v3, em:I
    const-string v0, ""

    .line 93
    .local v0, ampm:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0208

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {p0, v8, v9}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 96
    const/16 v12, 0xc

    if-lt v8, v12, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09bf

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0209

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_1
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020b

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 109
    const-string v0, ""

    .line 111
    const/16 v12, 0xc

    if-lt v2, v12, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09bf

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_2
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020c

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_3
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_repeat_days"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 122
    .local v7, repeatDays:I
    move v11, v7

    .line 123
    .local v11, tmpDays:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 125
    .local v6, r:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    const/4 v12, 0x7

    if-ge v4, v12, :cond_6

    .line 126
    and-int/lit8 v1, v11, 0xf

    .line 127
    .local v1, curDay:I
    shr-int/lit8 v11, v11, 0x4

    .line 128
    const/4 v10, 0x0

    .line 130
    .local v10, t:Landroid/widget/TextView;
    packed-switch v4, :pswitch_data_0

    .line 157
    :goto_5
    if-eqz v10, :cond_0

    .line 158
    sget-object v12, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->sDaysShortest:[I

    aget v12, v12, v4

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    if-lez v1, :cond_5

    if-eqz v5, :cond_5

    .line 161
    iget v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mListDayColorActive:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :cond_0
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 99
    .end local v1           #curDay:I
    .end local v4           #i:I
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #repeatDays:I
    .end local v10           #t:Landroid/widget/TextView;
    .end local v11           #tmpDays:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09be

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :cond_2
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0209

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09be

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 118
    :cond_4
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020c

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 132
    .restart local v1       #curDay:I
    .restart local v4       #i:I
    .restart local v6       #r:Landroid/content/res/Resources;
    .restart local v7       #repeatDays:I
    .restart local v10       #t:Landroid/widget/TextView;
    .restart local v11       #tmpDays:I
    :pswitch_0
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0214

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 133
    .restart local v10       #t:Landroid/widget/TextView;
    goto :goto_5

    .line 135
    :pswitch_1
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0213

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 136
    .restart local v10       #t:Landroid/widget/TextView;
    goto :goto_5

    .line 138
    :pswitch_2
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0212

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 139
    .restart local v10       #t:Landroid/widget/TextView;
    goto :goto_5

    .line 141
    :pswitch_3
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0211

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 142
    .restart local v10       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 144
    :pswitch_4
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0210

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 145
    .restart local v10       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 147
    :pswitch_5
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020f

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 148
    .restart local v10       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 150
    :pswitch_6
    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020e

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #t:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 151
    .restart local v10       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 163
    :cond_5
    iget v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->mListDayColorInactive:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 166
    .end local v1           #curDay:I
    .end local v10           #t:Landroid/widget/TextView;
    :cond_6
    return-void

    .line 130
    nop

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

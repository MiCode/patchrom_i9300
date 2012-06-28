.class public Lcom/android/OriginalSettings/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buttonText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/android/OriginalSettings/ButtonPreference;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/android/OriginalSettings/ButtonPreference;->mContext:Landroid/content/Context;

    .line 29
    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ButtonPreference;->setLayoutResource(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/android/OriginalSettings/ButtonPreference;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private performClick()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 40
    const v1, 0x7f0a02d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/OriginalSettings/ButtonPreference;->buttonText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/OriginalSettings/ButtonPreference;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/ButtonPreference;->performClick()V

    .line 71
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/OriginalSettings/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 76
    return-void
.end method

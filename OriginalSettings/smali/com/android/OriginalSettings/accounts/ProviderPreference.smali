.class public Lcom/android/OriginalSettings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotification:Ljava/lang/Boolean;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mProviderName:Ljava/lang/CharSequence;

.field private mProviderNotificationView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"
    .parameter "accountPresent"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object p4, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    .line 50
    const v0, 0x7f04009e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mNotification:Ljava/lang/Boolean;

    .line 55
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0a0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v0, 0x7f0a01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d066e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d066f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

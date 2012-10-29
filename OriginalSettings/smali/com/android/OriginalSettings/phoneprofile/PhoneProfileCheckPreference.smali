.class public Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;
.super Landroid/preference/Preference;
.source "PhoneProfileCheckPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mChecked:Z

.field private static mCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 49
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setLayoutResource(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, view:Landroid/view/View;
    const v3, 0x1010002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 79
    check-cast v2, Landroid/widget/CheckBox;

    .end local v2           #widget:Landroid/view/View;
    iput-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    sget-boolean v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    .line 82
    .local v0, isChecked:Z
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 83
    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 86
    .end local v0           #isChecked:Z
    :cond_0
    return-object v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "checkboxView"
    .parameter "isChecked"

    .prologue
    .line 117
    const-string v0, "PhoneProfileCheckPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 124
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 98
    sput-boolean p1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    .line 99
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public setForceChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 102
    sput-boolean p1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    .line 108
    return-void
.end method

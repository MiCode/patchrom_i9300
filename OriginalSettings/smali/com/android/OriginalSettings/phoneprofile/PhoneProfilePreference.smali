.class public Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;
.super Landroid/preference/Preference;
.source "PhoneProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    .line 57
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    .line 48
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setLayoutResource(I)V

    .line 107
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, view:Landroid/view/View;
    const v5, 0x1010003

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 79
    check-cast v1, Landroid/widget/RadioButton;

    .line 80
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 81
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 85
    sput-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 89
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    .line 97
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_2
    return-object v3

    .line 93
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 118
    const-string v0, "PhoneProfilePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    if-eqz p2, :cond_2

    .line 124
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 125
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 127
    :cond_1
    sput-object p1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 128
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    sput-object v3, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 132
    sput-object v3, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const/high16 v0, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 144
    const-string v1, "PhoneProfilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick  getKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_profile_edit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v2, "state"

    const-string v3, "edit"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    .line 158
    return-void
.end method

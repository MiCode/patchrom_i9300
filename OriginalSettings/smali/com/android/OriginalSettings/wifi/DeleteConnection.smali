.class public Lcom/android/OriginalSettings/wifi/DeleteConnection;
.super Lmiui/preference/BasePreferenceActivity;
.source "DeleteConnection.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final Null:Ljava/lang/String;

.field aps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field aps_to_forget:[Ljava/lang/String;

.field cr:Landroid/content/ContentResolver;

.field i:I

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mAlertDialog1:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->Null:Ljava/lang/String;

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    return-void
.end method

.method private initPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 127
    const-string v0, "del_ap"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 128
    .local v8, targetCategory:Landroid/preference/PreferenceCategory;
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 129
    .local v7, r:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 130
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v6, Landroid/preference/CheckBoxPreference;

    invoke-direct {v6, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 134
    .local v6, ap:Landroid/preference/CheckBoxPreference;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    :goto_1
    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 144
    const-string v0, "DeleteConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added preference key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    iget v1, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    iget v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    .line 151
    .end local v6           #ap:Landroid/preference/CheckBoxPreference;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 140
    .restart local v6       #ap:Landroid/preference/CheckBoxPreference;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unknown Address\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    .end local v6           #ap:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f040047

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->setContentView(I)V

    .line 73
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->addPreferencesFromResource(I)V

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps:Ljava/util/ArrayList;

    .line 77
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, save:Landroid/widget/Button;
    const v2, 0x7f0a001f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, cancel:Landroid/widget/Button;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->mAlertDialog1:Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->cr:Landroid/content/ContentResolver;

    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->initPreferences()V

    .line 86
    new-instance v2, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;-><init>(Lcom/android/OriginalSettings/wifi/DeleteConnection;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v2, Lcom/android/OriginalSettings/wifi/DeleteConnection$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/DeleteConnection$2;-><init>(Lcom/android/OriginalSettings/wifi/DeleteConnection;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    .line 183
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 161
    .local v2, value:Z
    if-eqz v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    iget v4, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    aput-object v0, v3, v4

    .line 163
    const-string v3, "DeleteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange, key checked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    iget v6, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->i:I

    .line 175
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 166
    :cond_1
    const/4 v1, 0x0

    .local v1, l:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    const-string v3, "DeleteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange, key unchecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 166
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemCancel:Landroid/view/MenuItem;

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 257
    :goto_1
    return v1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isHidingHeaders()Z
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 210
    check-cast v1, Lmiui/preference/BasePreferenceActivity;

    .line 211
    .local v1, prefActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    :cond_0
    const/4 v2, 0x1

    .line 214
    .end local v1           #prefActivity:Lmiui/preference/BasePreferenceActivity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reloadWhiteList()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 230
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 231
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 235
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeSelectedList()V
    .locals 4

    .prologue
    .line 218
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 220
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 222
    .local v2, wl:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 218
    .end local v2           #wl:Landroid/net/wifi/WifiApWhiteList;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    .line 226
    return-void
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .parameter "showIcon"

    .prologue
    const/4 v1, 0x0

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->isHidingHeaders()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, activity:Landroid/app/Activity;
    const-string v9, "device_list_category"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 100
    iget-boolean v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v9, :cond_1

    .line 101
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 131
    :goto_1
    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 132
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0d069e

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 133
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    .line 137
    .local v7, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 138
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v4, :cond_2

    .line 139
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 140
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 141
    .local v8, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-direct {v2, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, dev:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDeleteDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v9, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;

    invoke-direct {v9, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 91
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #dev:Landroid/preference/CheckBoxPreference;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v7           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v8           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 103
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 104
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0400e7

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 105
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0a02da

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 106
    .local v6, removeButton:Landroid/view/View;
    const v9, 0x7f0a02db

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 107
    .local v5, okTextView:Landroid/widget/TextView;
    const v9, 0x7f0d077d

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 108
    new-instance v9, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v9, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0a02d8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, deleteButton:Landroid/view/View;
    new-instance v9, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v9, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v9, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x15

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_1

    .line 158
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #okTextView:Landroid/widget/TextView;
    .end local v6           #removeButton:Landroid/view/View;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v7       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_2
    iget-boolean v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_3
    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 161
    :cond_3
    return-void

    .line 159
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 179
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->addPreferencesFromResource(I)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 165
    const/4 v0, 0x1

    const v1, 0x7f0d010e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    .line 166
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    const v1, 0x7f020059

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    const/4 v0, 0x2

    const v1, 0x7f0d077d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    .line 171
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    .line 244
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v2, :cond_1

    .line 249
    .end local p2
    :cond_0
    return v3

    .line 246
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 247
    .local v1, isChecked:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 240
    return-void
.end method

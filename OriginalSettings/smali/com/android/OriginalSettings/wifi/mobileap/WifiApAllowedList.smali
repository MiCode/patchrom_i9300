.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsTablet:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method private isHidingHeaders()Z
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 159
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 160
    check-cast v1, Lmiui/preference/BasePreferenceActivity;

    .line 161
    .local v1, prefActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    const/4 v2, 0x1

    .line 164
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
    .line 273
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 274
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 275
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 279
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startDeletePreference()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d02ce

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 171
    return-void
.end method

.method private updateList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 289
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 290
    .local v2, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 291
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v1, :cond_0

    .line 292
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 294
    .local v3, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, dev:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 298
    .end local v0           #dev:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    .end local v3           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 299
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_2

    .line 300
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f02006d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 302
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 304
    :cond_2
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_3

    .line 305
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 319
    :cond_3
    :goto_1
    return-void

    .line 309
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_6

    .line 310
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_5

    .line 311
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f02006c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 312
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 314
    :cond_6
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .parameter "showIcon"

    .prologue
    const/4 v1, 0x0

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v4, 0x0

    const/4 v8, -0x2

    const/4 v3, 0x1

    .line 100
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->isHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x1020004

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    const v5, 0x7f0d0264

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 114
    const-string v2, "device_list_category"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 116
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 151
    :goto_1
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 155
    return-void

    :cond_1
    move v2, v4

    .line 107
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 120
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400d0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    .line 121
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v5, 0x7f0a026f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, addButton:Landroid/view/View;
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v5, 0x7f0a026d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    .line 135
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v5, 0x7f0a026e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    .line 136
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 144
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 145
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_1

    .end local v0           #addButton:Landroid/view/View;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_3
    move v3, v4

    .line 152
    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x1

    .line 335
    packed-switch p2, :pswitch_data_0

    .line 367
    .end local p1
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    move-object v6, p1

    .line 337
    check-cast v6, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, mac:Ljava/lang/String;
    check-cast p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 341
    .local v5, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5, v1, v3}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 343
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, v1, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .local v0, device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 345
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 346
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0

    .line 349
    .end local v0           #device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 352
    :pswitch_4
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0268

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<font color=#59D0F3>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v1, v8, v12

    const/4 v9, 0x2

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, msgAdd:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 357
    .local v4, toastAdd:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 341
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 194
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 96
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    const/4 v3, 0x0

    .line 228
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 229
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 269
    :goto_0
    return-object v2

    .line 231
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, deleteDeviceDialog:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    check-cast v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0260

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0023

    new-instance v4, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d010e

    new-instance v4, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 252
    .end local v0           #deleteDeviceDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 253
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v1, macWarnDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0280

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d027f

    new-instance v4, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .end local v1           #macWarnDialog:Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v2, v3

    .line 269
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 175
    const/4 v0, 0x1

    const v1, 0x7f0d0278

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 176
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02006d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 185
    :cond_2
    const/4 v0, 0x2

    const v1, 0x7f0d025b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 186
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020050

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 189
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 223
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0290

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 219
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 323
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    .line 324
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 284
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 285
    return-void
.end method

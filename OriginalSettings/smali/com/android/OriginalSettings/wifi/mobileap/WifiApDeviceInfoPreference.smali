.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# instance fields
.field private mAllowAll:Z

.field private mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "fragment"
    .parameter "wifiConfig"

    .prologue
    const v3, 0x7f0d0263

    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    .line 45
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 47
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setLayoutResource(I)V

    .line 49
    if-nez p2, :cond_0

    .line 50
    const v0, 0x7f0d0261

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(I)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    .line 52
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_1

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 58
    const v0, 0x7f0d0265

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_0

    .line 60
    :cond_1
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/android/OriginalSettings/SettingsPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    return-void
.end method

.method private changeAllowPolicy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 110
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 111
    .local v0, wm:Landroid/net/wifi/WifiManager;
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x3

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 113
    const v1, 0x7f0d0263

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 120
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 122
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 124
    :cond_0
    return-void

    .end local v0           #wm:Landroid/net/wifi/WifiManager;
    :cond_1
    move v1, v3

    .line 108
    goto :goto_0

    .line 115
    .restart local v0       #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 116
    const v1, 0x7f0d0265

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d027c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0296

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04ee

    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d010e

    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 105
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 70
    const v1, 0x7f0a01a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 71
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

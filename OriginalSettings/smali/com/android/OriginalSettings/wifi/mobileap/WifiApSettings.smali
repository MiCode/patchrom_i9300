.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# instance fields
.field private final MHS_REQUEST:I

.field private isRoaming:Z

.field private isShowPassword:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsTablet:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 113
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 115
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 116
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 156
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    .line 158
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 611
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 633
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Lcom/android/OriginalSettings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 660
    sparse-switch p1, :sswitch_data_0

    .line 674
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 662
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 664
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 668
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 670
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 672
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 692
    :goto_0
    :pswitch_0
    return v0

    .line 680
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 684
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 688
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 690
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 4

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SAMSUNG_HOTSPOT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 712
    :cond_0
    const/16 v0, 0x4b0

    .line 716
    .local v0, defaultTimeout:I
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "CONNECTION_TIMEOUT"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 720
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 721
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-string v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 728
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 732
    :cond_2
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private isHidingHeaders()Z
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 241
    check-cast v1, Lmiui/preference/BasePreferenceActivity;

    .line 242
    .local v1, prefActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    const/4 v2, 0x1

    .line 245
    .end local v1           #prefActivity:Lmiui/preference/BasePreferenceActivity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveTimeoutPreference(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 704
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 755
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 758
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    .line 759
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 760
    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    .line 761
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 763
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 766
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0d0276

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 767
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 768
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 769
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 791
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 773
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    .line 774
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 775
    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    .line 776
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 778
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0d026c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 781
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 788
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0
.end method

.method private setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 697
    return-void
.end method

.method private updateConnectedDevices()V
    .locals 23

    .prologue
    .line 249
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v10, connectedDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v18

    .line 252
    .local v18, staList:Ljava/lang/String;
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 253
    .local v15, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v15, Landroid/os/Message;->what:I

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v16

    .line 256
    .local v16, num:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 257
    if-eqz v18, :cond_7

    if-lez v16, :cond_7

    .line 258
    const/4 v7, 0x0

    .line 259
    .local v7, buf:Ljava/io/BufferedReader;
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 260
    .local v19, tok:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 263
    .local v20, tokLength:I
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v22, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2000

    move/from16 v0, v22

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 264
    .end local v7           #buf:Ljava/io/BufferedReader;
    .local v8, buf:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, bufReadLine:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 265
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, dhcpLeaseInfo:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 267
    array-length v2, v11

    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v2, v0, :cond_3

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    .line 269
    move/from16 v0, v20

    if-ge v13, v0, :cond_3

    aget-object v2, v19, v13

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v22, v19, v13

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    const v2, 0x7f0d0275

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, deviceName:Ljava/lang/String;
    :goto_2
    aget-object v4, v19, v13

    .line 277
    .local v4, mac:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v5, v11, v2

    .line 278
    .local v5, ip:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v11, v2

    .line 280
    .local v6, connectTime:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v1, device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 287
    .end local v1           #device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #ip:Ljava/lang/String;
    .end local v6           #connectTime:Ljava/lang/String;
    .end local v9           #bufReadLine:Ljava/lang/String;
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :catch_0
    move-exception v12

    move-object v7, v8

    .line 288
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    .local v12, e:Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    if-eqz v7, :cond_1

    .line 292
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 297
    .end local v12           #e:Ljava/io/IOException;
    :cond_1
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    .line 298
    .local v21, wifiApConnectedDevices:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 274
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #wifiApConnectedDevices:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v9       #bufReadLine:Ljava/lang/String;
    .restart local v11       #dhcpLeaseInfo:[Ljava/lang/String;
    .restart local v13       #i:I
    :cond_2
    const/4 v2, 0x3

    :try_start_4
    aget-object v3, v11, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v3       #deviceName:Ljava/lang/String;
    goto :goto_2

    .line 266
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 291
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :cond_4
    if-eqz v8, :cond_5

    .line 292
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v7, v8

    .line 295
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 293
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 294
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 296
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 293
    .end local v9           #bufReadLine:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 294
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 290
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 291
    :goto_6
    if-eqz v7, :cond_6

    .line 292
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 295
    :cond_6
    :goto_7
    throw v2

    .line 293
    :catch_3
    move-exception v12

    .line 294
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 301
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #tok:[Ljava/lang/String;
    .end local v20           #tokLength:I
    :cond_7
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 302
    .local v17, pf:Landroid/preference/Preference;
    const v2, 0x7f0d0285

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    .end local v17           #pf:Landroid/preference/Preference;
    :cond_8
    return-void

    .line 290
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v19       #tok:[Ljava/lang/String;
    .restart local v20       #tokLength:I
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 287
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 414
    if-eqz p1, :cond_2

    .line 415
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02006a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 416
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 422
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 423
    if-eqz p1, :cond_3

    .line 424
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0201bb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 425
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 431
    :cond_1
    :goto_1
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 419
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 428
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 308
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    :cond_0
    const v1, 0x7f0d028b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#94b4c3"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "#94b4c3"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, text:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    .line 341
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    :cond_2
    :goto_1
    return-void

    .line 328
    :cond_3
    const v1, 0x7f0d028a

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "#94b4c3"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "#94b4c3"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0

    .line 343
    .end local v0           #text:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0d0261

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v8, -0x2

    const/4 v4, 0x0

    .line 183
    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 192
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 194
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 196
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 199
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-direct {v2, v0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    .line 200
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 217
    const-string v2, "wifi_ap_connected_devices"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 218
    const-string v2, "wifi_ap_howto_category"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 219
    const-string v2, "wifi_ap_howto"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    .line 220
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v2, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    .line 221
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    .line 222
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v4, 0x7f04009a

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 224
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 225
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 227
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 229
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 230
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    .line 231
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 233
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 235
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 236
    return-void

    :cond_0
    move v2, v4

    .line 194
    goto/16 :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 204
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 207
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 212
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    .line 213
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 644
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-nez p1, :cond_0

    .line 646
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 408
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 409
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
    return-void

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 18
    .parameter "dialogId"

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 502
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 503
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/OriginalSettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 504
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 608
    :goto_0
    return-object v1

    .line 520
    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v13

    .line 522
    .local v13, index:I
    const v1, 0x7f0400d6

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 523
    .local v12, customView:Landroid/view/View;
    const v1, 0x7f0a0285

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 524
    .local v15, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v17

    .line 526
    .local v17, timeoutItems:[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 528
    .local v9, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 529
    const v1, 0x7f0a0033

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    new-instance v9, Landroid/widget/ArrayAdapter;

    .end local v9           #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0400c1

    const v3, 0x1020014

    move-object/from16 v0, v17

    invoke-direct {v9, v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 541
    .restart local v9       #adapter:Landroid/widget/ListAdapter;
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 542
    invoke-virtual {v15, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    const/4 v1, 0x1

    invoke-virtual {v15, v13, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 544
    invoke-virtual {v15, v13}, Landroid/widget/ListView;->setSelection(I)V

    .line 545
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v15, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 552
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    .local v16, timeoutDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d026f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04ee

    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d010e

    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 535
    .end local v16           #timeoutDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v9, Landroid/widget/ArrayAdapter;

    .end local v9           #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x10900fe

    const v3, 0x1020014

    move-object/from16 v0, v17

    invoke-direct {v9, v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .restart local v9       #adapter:Landroid/widget/ListAdapter;
    goto :goto_1

    .line 567
    .end local v9           #adapter:Landroid/widget/ListAdapter;
    .end local v12           #customView:Landroid/view/View;
    .end local v13           #index:I
    .end local v15           #lv:Landroid/widget/ListView;
    .end local v17           #timeoutItems:[Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 568
    const-string v1, "WifiApSettings"

    const-string v2, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 570
    .local v8, OpenSecurityWarningDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d0a34

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 572
    const v1, 0x7f0400d5

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 573
    .restart local v12       #customView:Landroid/view/View;
    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 574
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v1, :cond_3

    .line 575
    const v1, 0x7f0a0282

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    :cond_3
    const v1, 0x7f0a0283

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 578
    .local v10, bChangeSecurity:Landroid/widget/Button;
    const v1, 0x7f0a0284

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 579
    .local v11, bContinue:Landroid/widget/Button;
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v1, 0x7f0d04ef

    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v8, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 608
    .end local v8           #OpenSecurityWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v10           #bChangeSecurity:Landroid/widget/Button;
    .end local v11           #bContinue:Landroid/widget/Button;
    .end local v12           #customView:Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 375
    const v4, 0x7f0d026a

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 376
    .local v1, menuTimeOut:Landroid/view/MenuItem;
    const v4, 0x7f0201c3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    const v4, 0x7f0d026b

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 379
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v4, :cond_1

    .line 380
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 381
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 390
    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f0d0269

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 391
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 394
    const v4, 0x7f0d026c

    invoke-interface {p1, v3, v7, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 395
    .local v0, menuHelp:Landroid/view/MenuItem;
    const v4, 0x7f0201bd

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 398
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v4, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 402
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 403
    return-void

    .line 383
    .end local v0           #menuHelp:Landroid/view/MenuItem;
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .restart local v0       #menuHelp:Landroid/view/MenuItem;
    :cond_2
    move v2, v3

    .line 399
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 371
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 440
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 442
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 443
    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    move v0, v7

    .line 445
    goto :goto_0

    .line 447
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    move v0, v7

    .line 449
    goto :goto_0

    .line 451
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d026b

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 458
    goto :goto_0

    .line 456
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 461
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d029a

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    move v0, v7

    .line 466
    goto :goto_0

    .line 469
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d026c

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_2
    move v0, v7

    .line 485
    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 365
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 366
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 349
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 351
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 355
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 356
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 436
    return-void
.end method

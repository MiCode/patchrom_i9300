.class public Lcom/android/OriginalSettings/Settings;
.super Lmiui/preference/BasePreferenceActivity;
.source "Settings.java"

# interfaces
.implements Lcom/android/OriginalSettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$AllShareCastSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HomeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DualClockSettingActivity;,
        Lcom/android/OriginalSettings/Settings$RemoteControlsActivity;,
        Lcom/android/OriginalSettings/Settings$UsbSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/OriginalSettings/Settings$NearbySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$MotionSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiPowerSaveActivity;,
        Lcom/android/OriginalSettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$RunningServicesActivity;,
        Lcom/android/OriginalSettings/Settings$DockSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PrivacySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocationSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SecuritySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageUseActivity;,
        Lcom/android/OriginalSettings/Settings$ManageApplicationsActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LedIndicatorSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LockScreenSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WallpaperSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DisplaySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoundSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocalePickerActivity;,
        Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$VpnSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TetherSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WirelessSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HeaderAdapter;
    }
.end annotation


# instance fields
.field private final MHS_REQUEST:I

.field private mAnimationAdapter:Lcom/android/OriginalSettings/AnimationAdapter;

.field private mAnimationEnable:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableAnimation:Z

.field private mFinished:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSelectedView:Landroid/view/View;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 92
    iput v1, p0, Lcom/android/OriginalSettings/Settings;->MHS_REQUEST:I

    .line 100
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mAnimationEnable:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 910
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mFinished:Z

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mSelectedView:Landroid/view/View;

    .line 912
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mEnableAnimation:Z

    .line 974
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method public static checkEnableMirroring()Z
    .locals 3

    .prologue
    .line 534
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    const/4 v1, 0x1

    .line 543
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 503
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 520
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 504
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    .line 505
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 508
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 509
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 511
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 512
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 513
    if-eqz v2, :cond_0

    .line 514
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 276
    iget v1, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 278
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 280
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionWithDuration(II)V

    .line 283
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private isOrangeCustomer()Z
    .locals 2

    .prologue
    .line 896
    const-string v0, "AMN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ONE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    :cond_0
    const/4 v0, 0x1

    .line 906
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 194
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 238
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 241
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 243
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 244
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 247
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 248
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 249
    iput-object v4, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 251
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 252
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->highlightHeader()V

    .line 254
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 255
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 257
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v3

    .line 260
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x0

    .line 379
    .local v2, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    .line 380
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 382
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v5, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v5

    .line 383
    .local v3, id:I
    const v5, 0x7f0a0331

    if-ne v3, v5, :cond_4

    .line 384
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->needsDockSettings()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    :cond_1
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_0

    .line 485
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 487
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 489
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_4
    const v5, 0x7f0a031a

    if-eq v3, v5, :cond_5

    const v5, 0x7f0a0327

    if-ne v3, v5, :cond_6

    .line 387
    :cond_5
    invoke-static {p0, p1, v1}, Lcom/android/OriginalSettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 388
    :cond_6
    const v5, 0x7f0a0314

    if-ne v3, v5, :cond_7

    .line 390
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    :cond_7
    const v5, 0x7f0a0315

    if-ne v3, v5, :cond_8

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_8
    const v5, 0x7f0a0318

    if-ne v3, v5, :cond_9

    .line 401
    const-string v5, "LGT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 402
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    :cond_9
    const v5, 0x7f0a0319

    if-ne v3, v5, :cond_a

    .line 406
    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 407
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    :cond_a
    const v5, 0x7f0a0316

    if-ne v3, v5, :cond_b

    .line 411
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 414
    :cond_b
    const v5, 0x7f0a0322

    if-eq v3, v5, :cond_1

    .line 419
    const v5, 0x7f0a0321

    if-eq v3, v5, :cond_1

    .line 423
    const v5, 0x7f0a031f

    if-ne v3, v5, :cond_c

    .line 424
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 428
    :cond_c
    const v5, 0x7f0a032e

    if-ne v3, v5, :cond_d

    .line 431
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 433
    :cond_d
    const v5, 0x7f0a0336

    if-ne v3, v5, :cond_f

    .line 434
    const/4 v4, 0x1

    .line 436
    .local v4, isSprintDsa:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sprint.dsa"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_2
    const-string v5, "SPR"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v4, :cond_1

    .line 442
    :cond_e
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_2

    .line 444
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #isSprintDsa:Z
    :cond_f
    const v5, 0x7f0a0313

    if-eq v3, v5, :cond_10

    const v5, 0x7f0a0312

    if-ne v3, v5, :cond_11

    .line 446
    :cond_10
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 448
    :cond_11
    const v5, 0x7f0a0320

    if-ne v3, v5, :cond_12

    .line 450
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 452
    :cond_12
    const v5, 0x7f0a0337

    if-ne v3, v5, :cond_13

    .line 453
    const-string v5, "SPR"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 454
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 456
    :cond_13
    const v5, 0x7f0a0328

    if-ne v3, v5, :cond_14

    .line 459
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 461
    :cond_14
    const v5, 0x7f0a0329

    if-ne v3, v5, :cond_15

    .line 464
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 466
    :cond_15
    const v5, 0x7f0a0334

    if-ne v3, v5, :cond_16

    .line 468
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->isOrangeCustomer()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 471
    :cond_16
    const v5, 0x7f0a0335

    if-ne v3, v5, :cond_17

    .line 473
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->isOrangeCustomer()Z

    move-result v5

    if-nez v5, :cond_1

    .line 474
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 476
    :cond_17
    const v5, 0x7f0a032b

    if-ne v3, v5, :cond_1

    .line 478
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 493
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #id:I
    :cond_18
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationEnable:Z

    if-eqz v0, :cond_0

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mFinished:Z

    .line 890
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationAdapter:Lcom/android/OriginalSettings/AnimationAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AnimationAdapter;->setOverridePendingTransition(I)Z

    .line 892
    :cond_0
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->finish()V

    .line 893
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 287
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 288
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 293
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 296
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 300
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 301
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 304
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 298
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 304
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 324
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 547
    const-string v1, "WifiAp_Settings"

    const-string v2, "Settings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-nez p1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 550
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 551
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 552
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 554
    .restart local v0       #listAdapter:Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f07004a

    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 374
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    .line 375
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/BasePreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 353
    const-class v1, Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    :cond_1
    const-class v1, Lcom/android/OriginalSettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 362
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x200

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->getMetaData()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 115
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iput-boolean v2, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->highlightHeader()V

    .line 120
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/Settings;->setSelectedMenuHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 123
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/Settings;->setTitle(I)V

    .line 127
    :cond_1
    if-eqz p1, :cond_2

    .line 128
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 129
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 132
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/OriginalSettings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/Settings$1;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/OriginalSettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_4
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationEnable:Z

    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 148
    new-instance v0, Lcom/android/OriginalSettings/AnimationAdapter;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AnimationAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationAdapter:Lcom/android/OriginalSettings/AnimationAdapter;

    .line 155
    :cond_5
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 333
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 336
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 338
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 339
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 343
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 3
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 877
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 879
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationEnable:Z

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mSelectedView:Landroid/view/View;

    .line 881
    iput-boolean v2, p0, Lcom/android/OriginalSettings/Settings;->mEnableAnimation:Z

    .line 882
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationAdapter:Lcom/android/OriginalSettings/AnimationAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/AnimationAdapter;->setAnimation(Landroid/view/View;I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 884
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 266
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 185
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->pause()V

    .line 188
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 827
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 828
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const v3, 0x7f0d03a4

    .line 831
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/OriginalSettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 175
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->resume()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationEnable:Z

    if-eqz v0, :cond_0

    .line 864
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mEnableAnimation:Z

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationAdapter:Lcom/android/OriginalSettings/AnimationAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AnimationAdapter;->start()Z

    .line 872
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onWindowFocusChanged(Z)V

    .line 873
    return-void

    .line 867
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mEnableAnimation:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/OriginalSettings/SubSettings;

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mEnableAnimation:Z

    .line 869
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAnimationAdapter:Lcom/android/OriginalSettings/AnimationAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mSelectedView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/AnimationAdapter;->setAnimation(Landroid/view/View;I)Lcom/android/OriginalSettings/AnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AnimationAdapter;->start()Z

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 848
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    .line 851
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 852
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Lmiui/preference/BasePreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 858
    return-void
.end method

.method setSelectedMenuHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 6
    .parameter "header"

    .prologue
    const/4 v5, 0x1

    .line 210
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, index:I
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedMenuHeader() : index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-ltz v0, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSelectedId(I)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 217
    .local v1, index2:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSelectedId(I)V

    goto :goto_0

    .line 225
    .end local v1           #index2:Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 227
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {v2, v5}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSelectedId(I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 199
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 200
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 203
    :cond_0
    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings;->setSelectedMenuHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 206
    :cond_1
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 207
    return-void
.end method

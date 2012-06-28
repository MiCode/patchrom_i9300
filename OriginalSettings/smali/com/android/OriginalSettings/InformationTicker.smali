.class public Lcom/android/OriginalSettings/InformationTicker;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "InformationTicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentsType:Landroid/preference/ListPreference;

.field private mSlidingSpeed:Landroid/preference/ListPreference;

.field private mTickerSetting:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 329
    xor-int/lit8 p0, p0, 0x1

    .line 330
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 324
    or-int/lit8 p0, p0, 0x1

    .line 325
    return p0
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v7, "contents_type"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, contentsType:I
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 221
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 222
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    const-string v7, "sliding_speed"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 226
    .local v3, slidingSpeed:I
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    if-nez v0, :cond_2

    .line 231
    const v7, 0x7f0d0845

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, summary:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "information_ticker"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 237
    .local v2, saved_value:Z
    :goto_1
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    if-eqz v2, :cond_4

    .line 240
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 241
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 242
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 243
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 251
    :goto_2
    return-void

    .line 233
    .end local v2           #saved_value:Z
    .end local v4           #summary:Ljava/lang/String;
    :cond_2
    const v7, 0x7f0d0846

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    :cond_3
    move v2, v6

    .line 236
    goto :goto_1

    .line 245
    .restart local v2       #saved_value:Z
    :cond_4
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v5, :cond_5

    .line 246
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 247
    :cond_5
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 248
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    .line 97
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 98
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 99
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0840

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 113
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 119
    const-string v5, "InformationTicker"

    const-string v8, "onCheckChanged"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 126
    .local v4, value:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "sn_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 132
    .local v3, mAppServiceStatus:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "sn_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "information_ticker"

    if-eqz p2, :cond_9

    move v5, v6

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    if-eqz p2, :cond_a

    .line 192
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v5, :cond_0

    .line 193
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 194
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 195
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 202
    :goto_4
    return-void

    .line 130
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "sn_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_1

    .line 145
    .end local v3           #mAppServiceStatus:I
    :cond_3
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 146
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 151
    .restart local v3       #mAppServiceStatus:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 158
    :goto_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v1       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v8, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v2       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 149
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_5

    .line 156
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_6

    .line 169
    .end local v3           #mAppServiceStatus:I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 170
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "yh_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 174
    .restart local v3       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "yh_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 181
    :goto_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v1       #intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v2       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 172
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "yh_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_7

    .line 179
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_8

    .restart local v1       #intent_nw:Landroid/content/Intent;
    .restart local v2       #intent_st:Landroid/content/Intent;
    :cond_9
    move v5, v7

    .line 189
    goto/16 :goto_3

    .line 197
    :cond_a
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v5, :cond_b

    .line 198
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 199
    :cond_b
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 200
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/InformationTicker;->addPreferencesFromResource(I)V

    .line 77
    const-string v0, "contents_type"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :cond_0
    const-string v0, "sliding_speed"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    const-string v0, "ticker_settings"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 214
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, key:Ljava/lang/String;
    const-string v3, "contents_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contents_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 304
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContentsType.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    if-nez v2, :cond_1

    .line 309
    const v3, 0x7f0d0845

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, summary:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    .end local v1           #summary:Ljava/lang/String;
    .end local v2           #value:I
    :cond_0
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 311
    .restart local v2       #value:I
    :cond_1
    const v3, 0x7f0d0846

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v1           #summary:Ljava/lang/String;
    .end local v2           #value:I
    .restart local p2
    :cond_2
    const-string v3, "sliding_speed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 315
    .restart local v2       #value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sliding_speed"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 317
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingSpeed.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 255
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ticker_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contents_type"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 257
    .local v1, contentType:I
    if-nez v1, :cond_3

    .line 261
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v5, "SETTING_MODE"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 267
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    const-string v5, "com.sec.android.daemonapp.ap.sinanews"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 269
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.sinanews"

    const-string v6, "com.sec.android.daemonapp.ap.sinanews.DaemonConfigure"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v0, cn:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #contentType:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 270
    .restart local v1       #contentType:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    const-string v5, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 272
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews.activity.SettingsNews"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 274
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_2
    const-string v5, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 275
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 279
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InformationTicker"

    const-string v6, "[NameNotFoundException] news daemon not installed !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 286
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 287
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 289
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.yahoostock.stockclock.MENUSETTING"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/OriginalSettings/InformationTicker;->updateState()V

    .line 209
    return-void
.end method

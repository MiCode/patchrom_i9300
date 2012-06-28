.class public Lcom/android/OriginalSettings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field img_sbeam:Landroid/widget/ImageView;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mView:Landroid/view/View;

.field private needRefresh:Z

.field private waitingNfcTurnOn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    .line 63
    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    .line 80
    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->needRefresh:Z

    .line 83
    new-instance v0, Lcom/android/OriginalSettings/nfc/SBeam$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nfc/SBeam$1;-><init>(Lcom/android/OriginalSettings/nfc/SBeam;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/nfc/SBeam;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nfc/SBeam;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_1

    .line 229
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 238
    :cond_2
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->needRefresh:Z

    if-eqz v0, :cond_0

    .line 242
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->needRefresh:Z

    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 254
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    const-string v1, "pref_sbeam"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 189
    :cond_1
    if-eqz p2, :cond_5

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 195
    iput-boolean v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 221
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 200
    iput-boolean v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 213
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->needRefresh:Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    .line 105
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    .line 107
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 109
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    instance-of v2, v2, Lmiui/preference/BasePreferenceActivity;

    if-eqz v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    check-cast v1, Lmiui/preference/BasePreferenceActivity;

    .line 111
    .local v1, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 115
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d01e1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    .end local v0           #padding:I
    .end local v1           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 127
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iput-boolean v6, p0, Lcom/android/OriginalSettings/nfc/SBeam;->waitingNfcTurnOn:Z

    .line 130
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->context:Landroid/content/Context;

    const-string v3, "pref_sbeam"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 131
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "SBeam_on_off"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "SBeam_on_off"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 142
    return-void

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 147
    const v0, 0x7f0400a9

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/nfc/SBeam;->initView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mView:Landroid/view/View;

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 156
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 99
    :cond_0
    return-void
.end method

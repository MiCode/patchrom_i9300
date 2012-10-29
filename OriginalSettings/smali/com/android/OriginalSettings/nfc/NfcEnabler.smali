.class public Lcom/android/OriginalSettings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReaderCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mReaderIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSBeam:Landroid/preference/PreferenceScreen;

.field private mSBeamEnabled:Z

.field private mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSBeamSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "context"
    .parameter "nfcCheckBox"
    .parameter "readerCheckBox"
    .parameter "androidBeam"
    .parameter "sBeam"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 61
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;-><init>(Lcom/android/OriginalSettings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 188
    iput-object p3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    .line 189
    iput-object p4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 190
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 191
    iput-object p5, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    .line 192
    iput-boolean v5, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 193
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 194
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 196
    :cond_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    .line 199
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 220
    :cond_3
    iput-object v6, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 221
    iput-object v6, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 231
    :goto_1
    return-void

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 224
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 225
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 227
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 229
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "androidBeam"
    .parameter "sBeam"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 61
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;-><init>(Lcom/android/OriginalSettings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 137
    iput-object p3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 138
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 139
    iput-object p4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    .line 140
    iput-boolean v6, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 141
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 142
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 144
    :cond_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    .line 147
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    :cond_2
    iput-object v5, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    .line 164
    iput-object v5, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 166
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_5

    .line 168
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 173
    :cond_3
    iput-object v5, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 182
    :goto_1
    return-void

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 176
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 178
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 180
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method private handleNfcReaderStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_0
    :pswitch_0
    return-void

    .line 409
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const v6, 0x7f0d01dd

    const v5, 0x7f0d01e3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    .line 305
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 315
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 319
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 321
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 338
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d01e2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 349
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 353
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 356
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 383
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 391
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 394
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 396
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 305
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


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 281
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 282
    .local v0, desiredState:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 285
    :cond_0
    if-eqz v0, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 298
    :cond_1
    :goto_0
    return v2

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    if-eqz v0, :cond_4

    .line 293
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 256
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

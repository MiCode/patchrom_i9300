.class public Lcom/android/OriginalSettings/motion/MotionSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mMotions:Landroid/preference/CheckBoxPreference;

.field private mPalmSwipe:Landroid/preference/CheckBoxPreference;

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mTapAndTwist:Landroid/preference/CheckBoxPreference;

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/MotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 245
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0849

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04ee

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionSettings$1;-><init>(Lcom/android/OriginalSettings/motion/MotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/motion/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/motion/MotionSettings$2;-><init>(Lcom/android/OriginalSettings/motion/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 264
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 74
    const-string v3, "motion_activation"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v3, "tilt"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    .line 76
    const-string v3, "tilt_to_scroll_list"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    .line 77
    const-string v3, "pan"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    .line 78
    const-string v3, "pan_to_browse_image"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    .line 79
    const-string v3, "shake"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    .line 80
    const-string v3, "double_tap"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    .line 81
    const-string v3, "pick_up"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 82
    const-string v3, "pick_up_to_call_out"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 83
    const-string v3, "turn_over"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    .line 84
    const-string v3, "palm_swipe"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v3, "palm_touch"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v3, "tap_and_twist"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    .line 88
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, deviceType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 109
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    if-eqz v0, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    :cond_4
    if-eqz v0, :cond_5

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    :cond_5
    if-eqz v0, :cond_6

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    if-eqz v0, :cond_7

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 142
    const-string v3, "category_surface"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 143
    .local v1, pc:Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_7

    .line 144
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    .end local v1           #pc:Landroid/preference/PreferenceCategory;
    :cond_7
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    .line 215
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 216
    .local v0, value:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_0
    :goto_1
    return v1

    .line 215
    .end local v0           #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    .restart local v0       #value:I
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_tilt_to_list_scrolling"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 222
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_5

    .line 223
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pan_to_browse_image"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_6

    .line 225
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_shake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 226
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_7

    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_double_tap"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_8

    .line 229
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 230
    :cond_8
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_9

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 232
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 171
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_8

    .line 172
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_6

    .line 173
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 175
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 176
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    const/4 v0, 0x1

    .line 186
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 187
    const v3, 0x7f0d088d

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    .line 211
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    return v4

    .line 188
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 189
    const v3, 0x7f0d088c

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 190
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 191
    const v3, 0x7f0d088b

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    iget-object v7, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    .line 197
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    iget-object v7, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    .line 201
    :cond_8
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_palm_swipe"

    iget-object v7, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 204
    :cond_a
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_c

    .line 205
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_palm_touch"

    iget-object v7, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v4

    :cond_b
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 207
    :cond_c
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_e

    .line 208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_tap_and_twist"

    iget-object v7, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d

    move v3, v4

    :cond_d
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 211
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 154
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_zooming"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_tilt_to_list_scrolling"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_panning"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 158
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pan_to_browse_image"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_shake"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_double_tap"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_overturn"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 164
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_swipe"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_touch"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_tap_and_twist"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    :goto_c
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 154
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 155
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 156
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 157
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 158
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 159
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 160
    goto :goto_6

    :cond_7
    move v0, v2

    .line 161
    goto :goto_7

    :cond_8
    move v0, v2

    .line 162
    goto :goto_8

    :cond_9
    move v0, v2

    .line 163
    goto :goto_9

    :cond_a
    move v0, v2

    .line 164
    goto :goto_a

    :cond_b
    move v0, v2

    .line 165
    goto :goto_b

    :cond_c
    move v1, v2

    .line 166
    goto :goto_c
.end method

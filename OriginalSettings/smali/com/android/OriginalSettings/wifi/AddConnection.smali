.class public Lcom/android/OriginalSettings/wifi/AddConnection;
.super Lmiui/preference/BasePreferenceActivity;
.source "AddConnection.java"


# instance fields
.field ap:Landroid/preference/PreferenceScreen;

.field private ap_address:Ljava/lang/String;

.field private ap_bssid:Ljava/lang/String;

.field private ap_cid:Ljava/lang/String;

.field private ap_ssid:Ljava/lang/String;

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mAlertDialog1:Landroid/app/AlertDialog$Builder;

.field private profile_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/AddConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/BasePreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 205
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 206
    const-string v1, "SSID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    .line 207
    const-string v1, "BSSID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    .line 208
    const-string v1, "ADDRESS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    .line 209
    const-string v1, "CID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    .line 210
    const-string v1, "AddConnection"

    const-string v2, "onActivityResult, RESULT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, s:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-void

    .line 217
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nUnknown Address\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v5, 0x7f070006

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AddConnection;->addPreferencesFromResource(I)V

    .line 82
    const v5, 0x7f04000a

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AddConnection;->setContentView(I)V

    .line 84
    const v5, 0x7f0a001c

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AddConnection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 85
    .local v0, add_conn_name:Landroid/widget/EditText;
    const-string v5, "matched_ap"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AddConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    .line 86
    const v5, 0x7f0a001e

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AddConnection;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 87
    .local v4, save:Landroid/widget/Button;
    const v5, 0x7f0a001f

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AddConnection;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 89
    .local v2, cancel:Landroid/widget/Button;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 90
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->mAlertDialog1:Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AddConnection;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 94
    const-string v5, "PROFILE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    .line 95
    const-string v5, "SSID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    .line 96
    const-string v5, "BSSID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    .line 97
    const-string v5, "CID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    .line 98
    const-string v5, "ADDRESS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    .line 100
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, s:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v5, Lcom/android/OriginalSettings/wifi/AddConnection$1;

    invoke-direct {v5, p0, v0}, Lcom/android/OriginalSettings/wifi/AddConnection$1;-><init>(Lcom/android/OriginalSettings/wifi/AddConnection;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    new-instance v5, Lcom/android/OriginalSettings/wifi/AddConnection$2;

    invoke-direct {v5, p0, v0}, Lcom/android/OriginalSettings/wifi/AddConnection$2;-><init>(Lcom/android/OriginalSettings/wifi/AddConnection;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v5, Lcom/android/OriginalSettings/wifi/AddConnection$3;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/AddConnection$3;-><init>(Lcom/android/OriginalSettings/wifi/AddConnection;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nUnknown Address\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v3           #s:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0d0a64

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "matched_ap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    const-class v2, Lcom/android/OriginalSettings/wifi/SelectApDialog;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/AddConnection;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    :goto_0
    return v0

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.class Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 176
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 178
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->access$000(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 179
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->access$000(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 183
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 184
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

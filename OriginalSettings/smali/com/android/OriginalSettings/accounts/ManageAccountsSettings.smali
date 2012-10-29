.class public Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;
.super Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/OriginalSettings/DialogCreatable;


# instance fields
.field private mAddAccount:Landroid/view/MenuItem;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Landroid/widget/Switch;

.field private mCancelSync:Landroid/view/MenuItem;

.field private mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mErrorInfoIcon:Landroid/widget/ImageView;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mSyncAll:Landroid/view/MenuItem;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private cancelSyncAllForEnabledProviders()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 602
    return-void
.end method

.method private requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 639
    if-eqz p3, :cond_0

    .line 640
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 641
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : request : account = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 650
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 646
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : cancel : account = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncAllForEnabledProviders(Z)V
    .locals 11
    .parameter "startSync"

    .prologue
    .line 605
    const/4 v3, 0x0

    .line 607
    .local v3, count:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 613
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 614
    const/4 v6, 0x0

    .line 616
    .local v6, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pref:Lcom/android/OriginalSettings/AccountPreference;
    check-cast v6, Lcom/android/OriginalSettings/AccountPreference;

    .line 621
    .restart local v6       #pref:Lcom/android/OriginalSettings/AccountPreference;
    :goto_2
    invoke-virtual {v6}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 622
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v6}, Lcom/android/OriginalSettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v1

    .line 623
    .local v1, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 624
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 625
    .local v2, authority:Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 626
    .local v7, syncEnabled:Z
    iget-object v8, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    .line 627
    :cond_1
    invoke-direct {p0, v0, v2, p1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_3

    .line 610
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #authority:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #pref:Lcom/android/OriginalSettings/AccountPreference;
    .end local v7           #syncEnabled:Z
    :cond_2
    iget-object v8, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    goto :goto_0

    .line 619
    .restart local v4       #i:I
    .restart local v6       #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pref:Lcom/android/OriginalSettings/AccountPreference;
    check-cast v6, Lcom/android/OriginalSettings/AccountPreference;

    .restart local v6       #pref:Lcom/android/OriginalSettings/AccountPreference;
    goto :goto_2

    .line 631
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v8, "AccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ManageAccountsSettings : requestOrCancelSyncAllForEnabledProviders : no syncadapters found for [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 636
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_6
    return-void
.end method

.method private setTextSyncAll(Z)V
    .locals 21
    .parameter "bAnySyncEnabledAuth"

    .prologue
    .line 433
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v7

    .line 434
    .local v7, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    const/4 v14, 0x1

    .line 435
    .local v14, isSyncActive:Z
    :goto_0
    const/4 v13, 0x0

    .line 436
    .local v13, isAnyAuthority:Z
    const/16 v17, 0x0

    .line 437
    .local v17, syncPendingCount:I
    const/16 v16, 0x0

    .line 438
    .local v16, preferenceCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v16

    .line 444
    :goto_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_9

    .line 445
    const/4 v15, 0x0

    .line 446
    .local v15, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    .end local v15           #pref:Lcom/android/OriginalSettings/AccountPreference;
    check-cast v15, Lcom/android/OriginalSettings/AccountPreference;

    .line 451
    .restart local v15       #pref:Lcom/android/OriginalSettings/AccountPreference;
    :goto_3
    invoke-virtual {v15}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 452
    .local v2, account:Landroid/accounts/Account;
    invoke-virtual {v15}, Lcom/android/OriginalSettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v3

    .line 453
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_7

    .line 454
    const/4 v13, 0x1

    .line 455
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 456
    .local v4, authority:Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 457
    add-int/lit8 v17, v17, 0x1

    .line 459
    :cond_1
    const/4 v6, 0x0

    .line 460
    .local v6, currentAuth:Z
    const/4 v5, 0x0

    .line 461
    .local v5, currentAccount:Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncInfo;

    .line 462
    .local v12, info:Landroid/content/SyncInfo;
    iget-object v0, v12, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 463
    const/4 v6, 0x1

    .line 465
    :cond_3
    new-instance v18, Landroid/accounts/Account;

    iget-object v0, v12, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v12, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 466
    const/4 v5, 0x1

    goto :goto_4

    .line 434
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #currentAccount:Z
    .end local v6           #currentAuth:Z
    .end local v9           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/SyncInfo;
    .end local v13           #isAnyAuthority:Z
    .end local v14           #isSyncActive:Z
    .end local v15           #pref:Lcom/android/OriginalSettings/AccountPreference;
    .end local v16           #preferenceCount:I
    .end local v17           #syncPendingCount:I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 441
    .restart local v13       #isAnyAuthority:Z
    .restart local v14       #isSyncActive:Z
    .restart local v16       #preferenceCount:I
    .restart local v17       #syncPendingCount:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v16

    goto/16 :goto_1

    .line 449
    .restart local v9       #i:I
    .restart local v15       #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    .end local v15           #pref:Lcom/android/OriginalSettings/AccountPreference;
    check-cast v15, Lcom/android/OriginalSettings/AccountPreference;

    .restart local v15       #pref:Lcom/android/OriginalSettings/AccountPreference;
    goto/16 :goto_3

    .line 471
    .restart local v2       #account:Landroid/accounts/Account;
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const-string v18, "AccountSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ManageAccountsSettings : setSyncButtonText : no syncadapters found for [ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 478
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_9
    if-nez v16, :cond_a

    .line 480
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    const-string v18, "AccountSettings"

    const-string v19, "ManageAccountsSettings : Sync button is removed !!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local p1
    :goto_5
    return-void

    .line 484
    .restart local p1
    :cond_a
    if-nez v14, :cond_d

    if-nez v17, :cond_d

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    if-eqz v13, :cond_c

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Switch;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_b

    .end local p1
    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 492
    :goto_7
    const-string v18, "AccountSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ManageAccountsSettings : Sync button is [ Sync all ] and enable is [ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 500
    :catch_0
    move-exception v8

    .line 501
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v18, "AccountSettings"

    const-string v19, "ManageAccountsSettings : setTextSyncAll() : Null Pointer Exception!!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 488
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local p1
    :cond_b
    const/16 p1, 0x1

    goto :goto_6

    .line 490
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 495
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 498
    const-string v18, "AccountSettings"

    const-string v19, "ManageAccountsSettings : Sync button is [ Cancel sync ] !!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 248
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d0672

    invoke-virtual {p1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 254
    return-void
.end method

.method private startSyncAllForEnabledProvider()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 597
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 23
    .parameter "accounts"

    .prologue
    .line 508
    const-string v19, ""

    .line 509
    .local v19, myphonebook_isd:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 564
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 515
    :goto_1
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .local v20, n:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 516
    aget-object v10, p1, v16

    .line 517
    .local v10, account:Landroid/accounts/Account;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 519
    .local v6, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x1

    .line 520
    .local v22, showAccount:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 521
    const/16 v22, 0x0

    .line 522
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v21, v14, v17

    .line 523
    .local v21, requestedAuthority:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 524
    const/16 v22, 0x1

    .line 530
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v21           #requestedAuthority:Ljava/lang/String;
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 531
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 532
    .local v7, providerName:Ljava/lang/CharSequence;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 534
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v8, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 536
    const-string v7, ""

    .line 537
    const-string v15, "com.android.tmo_myphonebook"

    .line 540
    .local v15, getType:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v8, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 542
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, v19

    invoke-direct {v4, v0, v15}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v4, setAccount:Landroid/accounts/Account;
    new-instance v2, Lcom/android/OriginalSettings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lcom/android/OriginalSettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 545
    .local v2, preference:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 515
    .end local v2           #preference:Lcom/android/OriginalSettings/AccountPreference;
    .end local v4           #setAccount:Landroid/accounts/Account;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #providerName:Ljava/lang/CharSequence;
    .end local v15           #getType:Ljava/lang/String;
    :cond_2
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 513
    .end local v6           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #account:Landroid/accounts/Account;
    .end local v16           #i:I
    .end local v20           #n:I
    .end local v22           #showAccount:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_1

    .line 522
    .restart local v6       #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #account:Landroid/accounts/Account;
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #i$:I
    .restart local v18       #len$:I
    .restart local v20       #n:I
    .restart local v21       #requestedAuthority:Ljava/lang/String;
    .restart local v22       #showAccount:Z
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 548
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v21           #requestedAuthority:Ljava/lang/String;
    .restart local v2       #preference:Lcom/android/OriginalSettings/AccountPreference;
    .restart local v4       #setAccount:Landroid/accounts/Account;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #providerName:Ljava/lang/CharSequence;
    .restart local v15       #getType:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 553
    .end local v2           #preference:Lcom/android/OriginalSettings/AccountPreference;
    .end local v4           #setAccount:Landroid/accounts/Account;
    .end local v15           #getType:Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/android/OriginalSettings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move-object v8, v2

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/OriginalSettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 555
    .restart local v2       #preference:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 558
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 563
    .end local v2           #preference:Lcom/android/OriginalSettings/AccountPreference;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #providerName:Ljava/lang/CharSequence;
    .end local v10           #account:Landroid/accounts/Account;
    .end local v22           #showAccount:Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    .line 131
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 135
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    .line 140
    const-string v3, "manageAccountsSwitch"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 141
    const-string v3, "manageAccountsCategory"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 150
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 152
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 159
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    .end local v1           #padding:I
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 194
    return-void

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 592
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 576
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/OriginalSettings/AccountPreference;
    check-cast v2, Lcom/android/OriginalSettings/AccountPreference;

    .line 583
    .restart local v2       #pref:Lcom/android/OriginalSettings/AccountPreference;
    :goto_2
    invoke-virtual {v2}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 584
    invoke-virtual {v2}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    .end local v1           #i:I
    .end local v2           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    goto :goto_0

    .line 581
    .restart local v1       #i:I
    .restart local v2       #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/OriginalSettings/AccountPreference;
    check-cast v2, Lcom/android/OriginalSettings/AccountPreference;

    .restart local v2       #pref:Lcom/android/OriginalSettings/AccountPreference;
    goto :goto_2

    .line 586
    .end local v2           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const v0, 0x7f0d0674

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    .line 269
    const v0, 0x7f0d0839

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    .line 270
    const v0, 0x7f0d083b

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 274
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 276
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 290
    :goto_0
    return-void

    .line 279
    :cond_0
    const v0, 0x7f0d0839

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    .line 280
    const v0, 0x7f0d083b

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    .line 281
    const v0, 0x7f0d0674

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    .line 283
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const v1, 0x7f040064

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 310
    .local v0, itemId:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onAddAccountClicked()V

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 322
    :goto_1
    return v1

    .line 312
    :cond_0
    if-ne v0, v1, :cond_1

    .line 313
    const-string v2, "AccountSettings"

    const-string v3, "ManageAccountsSettings : Sync all button is clicked!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startSyncAllForEnabledProvider()V

    goto :goto_0

    .line 315
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 316
    const-string v2, "AccountSettings"

    const-string v3, "ManageAccountsSettings : Cancel sync button is clicked!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->cancelSyncAllForEnabledProviders()V

    goto :goto_0

    .line 319
    :cond_2
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 221
    instance-of v3, p2, Lcom/android/OriginalSettings/AccountPreference;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 223
    check-cast v0, Lcom/android/OriginalSettings/AccountPreference;

    .line 225
    .local v0, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v1, syncmlDsIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    const-string v3, "ManageAccountsSettings"

    const-string v4, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0           #pref:Lcom/android/OriginalSettings/AccountPreference;
    .end local v1           #syncmlDsIntent:Landroid/content/Intent;
    .end local p2
    :goto_0
    return v2

    .line 237
    .restart local v0       #pref:Lcom/android/OriginalSettings/AccountPreference;
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/OriginalSettings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V

    goto :goto_0

    .line 240
    .restart local p2
    :cond_1
    check-cast p2, Lcom/android/OriginalSettings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V

    goto :goto_0

    .line 242
    .end local v0           #pref:Lcom/android/OriginalSettings/AccountPreference;
    .restart local p2
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 297
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 298
    .local v1, syncActive:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 299
    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    if-nez v1, :cond_2

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #syncActive:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_1
    move v1, v3

    .line 297
    goto :goto_0

    .restart local v1       #syncActive:Z
    :cond_2
    move v2, v3

    .line 299
    goto :goto_1

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onResume()V

    .line 205
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 210
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    .line 212
    .local v0, rp:Landroid/app/enterprise/RoamingPolicy;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 217
    .end local v0           #rp:Landroid/app/enterprise/RoamingPolicy;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onStart()V

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 114
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onStop()V

    .line 199
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 201
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 34

    .prologue
    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    if-nez v30, :cond_0

    .line 430
    :goto_0
    return-void

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Switch;->setChecked(Z)V

    .line 335
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v13

    .line 337
    .local v13, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v6, 0x0

    .line 338
    .local v6, anySyncFailed:Z
    const/4 v5, 0x0

    .line 341
    .local v5, anySyncEnabledAuth:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v24

    .line 342
    .local v24, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v29, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, k:I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v20, v0

    .local v20, n:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 344
    aget-object v22, v24, v18

    .line 345
    .local v22, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v22 .. v22}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 346
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 350
    .end local v22           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v10, 0x0

    .line 352
    .local v10, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    .line 358
    :goto_2
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-ge v14, v10, :cond_14

    .line 359
    const/16 v21, 0x0

    .line 360
    .local v21, pref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v21

    .line 366
    :goto_4
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/OriginalSettings/AccountPreference;

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 358
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 355
    .end local v14           #i:I
    .end local v21           #pref:Landroid/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    goto :goto_2

    .line 363
    .restart local v14       #i:I
    .restart local v21       #pref:Landroid/preference/Preference;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v21

    goto :goto_4

    :cond_6
    move-object/from16 v3, v21

    .line 370
    check-cast v3, Lcom/android/OriginalSettings/AccountPreference;

    .line 371
    .local v3, accountPref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 373
    .local v2, account:Landroid/accounts/Account;
    const/16 v25, 0x0

    .line 374
    .local v25, syncCount:I
    const/16 v27, 0x0

    .line 375
    .local v27, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/OriginalSettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v7

    .line 376
    .local v7, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_f

    .line 377
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 378
    .local v8, authority:Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v23

    .line 379
    .local v23, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v30

    if-lez v30, :cond_9

    const/16 v26, 0x1

    .line 382
    .local v26, syncEnabled:Z
    :goto_7
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    .line 384
    .local v9, authorityIsPending:Z
    const/4 v12, 0x0

    .line 385
    .local v12, currentAuth:Z
    const/4 v11, 0x0

    .line 386
    .local v11, currentAccount:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_7
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/SyncInfo;

    .line 387
    .local v17, info:Landroid/content/SyncInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 388
    const/4 v12, 0x1

    .line 390
    :cond_8
    new-instance v30, Landroid/accounts/Account;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 391
    const/4 v11, 0x1

    goto :goto_8

    .line 379
    .end local v9           #authorityIsPending:Z
    .end local v11           #currentAccount:Z
    .end local v12           #currentAuth:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #info:Landroid/content/SyncInfo;
    .end local v26           #syncEnabled:Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_7

    .line 395
    .restart local v9       #authorityIsPending:Z
    .restart local v11       #currentAccount:Z
    .restart local v12       #currentAuth:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v26       #syncEnabled:Z
    :cond_a
    if-eqz v13, :cond_c

    if-eqz v12, :cond_c

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    .line 398
    .local v4, activelySyncing:Z
    :goto_9
    if-eqz v23, :cond_d

    if-eqz v26, :cond_d

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_d

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v19, 0x1

    .line 403
    .local v19, lastSyncFailed:Z
    :goto_a
    if-eqz v19, :cond_b

    if-nez v4, :cond_b

    if-nez v9, :cond_b

    .line 404
    const/16 v27, 0x1

    .line 405
    const/4 v6, 0x1

    .line 407
    :cond_b
    if-eqz v26, :cond_e

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    const/16 v30, 0x1

    :goto_b
    add-int v25, v25, v30

    .line 408
    goto/16 :goto_6

    .line 395
    .end local v4           #activelySyncing:Z
    .end local v19           #lastSyncFailed:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    .line 398
    .restart local v4       #activelySyncing:Z
    :cond_d
    const/16 v19, 0x0

    goto :goto_a

    .line 407
    .restart local v19       #lastSyncFailed:Z
    :cond_e
    const/16 v30, 0x0

    goto :goto_b

    .line 410
    .end local v4           #activelySyncing:Z
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #authorityIsPending:Z
    .end local v11           #currentAccount:Z
    .end local v12           #currentAuth:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #lastSyncFailed:Z
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v26           #syncEnabled:Z
    :cond_f
    const-string v30, "AccountSettings"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 411
    const-string v30, "AccountSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "no syncadapters found for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_10
    const/16 v28, 0x1

    .line 415
    .local v28, syncStatus:I
    if-eqz v27, :cond_12

    .line 416
    const/16 v28, 0x2

    .line 417
    const/4 v5, 0x1

    .line 424
    :cond_11
    :goto_c
    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/OriginalSettings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_5

    .line 418
    :cond_12
    if-nez v25, :cond_13

    .line 419
    const/16 v28, 0x1

    goto :goto_c

    .line 420
    :cond_13
    if-lez v25, :cond_11

    .line 421
    const/16 v28, 0x0

    .line 422
    const/4 v5, 0x1

    goto :goto_c

    .line 427
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/OriginalSettings/AccountPreference;
    .end local v7           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21           #pref:Landroid/preference/Preference;
    .end local v25           #syncCount:I
    .end local v27           #syncIsFailing:Z
    .end local v28           #syncStatus:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v6, :cond_15

    const/16 v30, 0x0

    :goto_d
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v6, :cond_16

    const/16 v30, 0x0

    :goto_e
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->setTextSyncAll(Z)V

    goto/16 :goto_0

    .line 427
    :cond_15
    const/16 v30, 0x8

    goto :goto_d

    .line 428
    :cond_16
    const/16 v30, 0x8

    goto :goto_e
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/OriginalSettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 262
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.class public Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiOffloadDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field public mLaunchFromSetup:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 26
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 27
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 28
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 137
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    .line 138
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "WifiOffloadDialog"

    const-string v2, "Offload onBackKeyPressed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 141
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v1, :cond_1

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.setupwizard.DATA_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, paygDataSetupIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 151
    .end local v0           #paygDataSetupIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 40
    iput-object p0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 42
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 43
    .local v3, status:I
    const-string v4, "LAUNCH_SETUPWIZARD"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 44
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_0

    .line 45
    const-string v4, "WifiOffloadDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " %%%%%%%%%%%%%%%%%%%%%%%%%%    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    if-ne v3, v7, :cond_1

    .line 47
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    .line 48
    :cond_1
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-ne v4, v7, :cond_2

    .line 49
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    .line 50
    const v4, 0x7f0f0001

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setTheme(I)V

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5, v8}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v4, "WifiOffloadDialog"

    const-string v5, "Offload, Dialog comes....!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_4

    .line 56
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 58
    const-string v4, "WifiOffloadDialog"

    const-string v5, "Requesting for WIFI from Setupwizard"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v4, 0x7f0400e3

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0400bc

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 61
    const v4, 0x7f0f0002

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setTheme(I)V

    .line 62
    const v4, 0x7f0a02d0

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 63
    .local v1, exitSetup:Landroid/widget/Button;
    new-instance v4, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .end local v1           #exitSetup:Landroid/widget/Button;
    :goto_0
    const-string v4, "wifioffload"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiOffloadManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 84
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 85
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v4, :cond_3

    .line 86
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 92
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a02ca

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/OriginalSettings/wifi/WifiSettings;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    .line 95
    const v4, 0x7f0a02cd

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    .line 96
    const v4, 0x7f0a02cc

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    .line 97
    return-void

    .line 69
    :cond_4
    const v4, 0x7f0400e2

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 70
    const v4, 0x7f0a02ce

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, dontDisturb:Landroid/widget/Button;
    new-instance v4, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$2;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 156
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 157
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 105
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 120
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 121
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 123
    const-string v1, "WifiOffloadDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name in onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 130
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 131
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 133
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onUserLeaveHint()V

    .line 170
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLeaveHint() ===>>> : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 173
    :cond_0
    return-void
.end method

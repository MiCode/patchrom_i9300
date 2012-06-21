.class Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field static final ALLOW_AUTO_REPORT:I = 0x4

.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 18
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v14, Lcom/android/server/am/AppNotRespondingDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 61
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 64
    .local v11, res:Landroid/content/res/Resources;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 67
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 70
    .local v8, name1:Ljava/lang/CharSequence;
    :goto_0
    const/4 v9, 0x0

    .line 71
    .local v9, name2:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 73
    if-eqz v8, :cond_3

    .line 74
    const v12, 0x104046e

    .line 91
    .local v12, resid:I
    :goto_1
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v14, :cond_a

    .line 100
    const-string v3, "-k -t -z -d -o /data/log/"

    .line 101
    .local v3, dumpstateCmd:Ljava/lang/String;
    const-string v5, "dumpstate#anr#"

    .line 102
    .local v5, fileName:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v14, :cond_6

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 103
    .local v10, processName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 104
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 110
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MD5"

    invoke-static {v14, v15}, Lcom/samsung/CustomerCrashReport;->makeHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, hashValue:Ljava/lang/String;
    const-string v14, "[. ]"

    const-string v15, "_"

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getModelName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getSWVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.intent.action.SAMSUNG_CRASHREPORT"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, ccrErrorIntent:Landroid/content/Intent;
    if-eqz v2, :cond_9

    .line 125
    const/high16 v14, 0x1000

    invoke-virtual {v2, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v14, "errorType"

    const-string v15, "ANR"

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v14, "dumpfilePath"

    invoke-virtual {v2, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v14, "activity"

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v14, "cause"

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v14, "info"

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    .end local v2           #ccrErrorIntent:Landroid/content/Intent;
    .end local v3           #dumpstateCmd:Ljava/lang/String;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #hashValue:Ljava/lang/String;
    .end local v10           #processName:Ljava/lang/String;
    :goto_4
    const/4 v7, 0x0

    .line 143
    .local v7, messageString:Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 144
    if-eqz v8, :cond_b

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 152
    :goto_5
    const/4 v14, -0x1

    const v15, 0x1040472

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 155
    const/4 v14, -0x2

    const v15, 0x1040474

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 159
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v14, :cond_e

    .line 161
    const/4 v13, 0x0

    .line 162
    .local v13, rp:Landroid/app/enterprise/RestrictionPolicy;
    const-string v14, "enterprise_policy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 164
    .local v4, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    .line 167
    :cond_0
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 169
    const/4 v14, -0x3

    const v15, 0x1040473

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 184
    .end local v4           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v13           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    const v14, 0x104046d

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/high16 v15, 0x4000

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Application Not Responding: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    return-void

    .line 67
    .end local v7           #messageString:Ljava/lang/String;
    .end local v8           #name1:Ljava/lang/CharSequence;
    .end local v9           #name2:Ljava/lang/CharSequence;
    .end local v12           #resid:I
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 76
    .restart local v8       #name1:Ljava/lang/CharSequence;
    .restart local v9       #name2:Ljava/lang/CharSequence;
    :cond_3
    move-object v8, v9

    .line 77
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    const v12, 0x1040470

    .restart local v12       #resid:I
    goto/16 :goto_1

    .line 81
    .end local v12           #resid:I
    :cond_4
    if-eqz v8, :cond_5

    .line 82
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 83
    const v12, 0x104046f

    .restart local v12       #resid:I
    goto/16 :goto_1

    .line 85
    .end local v12           #resid:I
    :cond_5
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 86
    const v12, 0x1040471

    .restart local v12       #resid:I
    goto/16 :goto_1

    .line 102
    .restart local v3       #dumpstateCmd:Ljava/lang/String;
    .restart local v5       #fileName:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto/16 :goto_2

    .line 105
    .restart local v10       #processName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 106
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 108
    :cond_8
    const-string v10, "unkownProcess"

    goto/16 :goto_3

    .line 133
    .restart local v2       #ccrErrorIntent:Landroid/content/Intent;
    .restart local v6       #hashValue:Ljava/lang/String;
    :cond_9
    const-string v14, "AppNotRespondingDialog"

    const-string v15, "CCR reporter can\'t send broadcast because ccrErrorIntent is null"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 137
    .end local v2           #ccrErrorIntent:Landroid/content/Intent;
    .end local v3           #dumpstateCmd:Ljava/lang/String;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #hashValue:Ljava/lang/String;
    .end local v10           #processName:Ljava/lang/String;
    :cond_a
    const-string v14, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    invoke-static {v14}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 145
    .restart local v7       #messageString:Ljava/lang/String;
    :cond_b
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 147
    :cond_c
    if-eqz v8, :cond_d

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 148
    :cond_d
    const-string v7, ""

    goto/16 :goto_5

    .line 176
    :cond_e
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isAutoSend()Z

    move-result v14

    if-nez v14, :cond_1

    .line 178
    const/4 v14, -0x3

    const v15, 0x1040646

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x1040647

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

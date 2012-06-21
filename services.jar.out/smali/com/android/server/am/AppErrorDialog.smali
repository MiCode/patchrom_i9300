.class Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final ALLOW_AUTO_REPORT:I = 0x2

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppErrorDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .parameter "context"
    .parameter "result"
    .parameter "app"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v4, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 188
    const-string v4, "-k -t -n -z -d -o /data/log/dumpstate_app_error"

    invoke-static {v4}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 192
    .local v2, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 193
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 195
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, name:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 197
    const v4, 0x104046b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 209
    const/4 v4, -0x1

    const v5, 0x1040472

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 213
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, rp:Landroid/app/enterprise/RestrictionPolicy;
    const-string v4, "enterprise_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 218
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 221
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    const/4 v4, -0x2

    const v5, 0x1040473

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 231
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    const v4, 0x104046a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    iget-boolean v4, p3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v4, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 239
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x493e0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    return-void

    .line 201
    .end local v1           #name:Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 202
    .restart local v1       #name:Ljava/lang/CharSequence;
    const v4, 0x104046c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 15
    .parameter "context"
    .parameter "result"
    .parameter "app"
    .parameter "crashInfo"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v11, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v11, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 69
    .local v9, res:Landroid/content/res/Resources;
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 70
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 82
    const-string v2, "-k -t -n -z -d -o /data/log/"

    .line 83
    .local v2, dumpstateCmd:Ljava/lang/String;
    const-string v4, "dumpstate#app#"

    .line 84
    .local v4, fileName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 85
    .local v8, processName:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MD5"

    invoke-static {v11, v12}, Lcom/samsung/CustomerCrashReport;->makeHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, hashValue:Ljava/lang/String;
    const/4 v6, 0x0

    .line 92
    .local v6, messageString:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, name:Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    .line 94
    const v11, 0x104046b

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v9, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 97
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 106
    :goto_0
    const-string v11, "[. ]"

    const-string v12, "_"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getModelName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getSWVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.SAMSUNG_CRASHREPORT"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, ccrErrorIntent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 119
    const-string v11, "errorType"

    const-string v12, "CRASH"

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v11, "dumpfilePath"

    invoke-virtual {v1, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v11, "packageName"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v11, "exceptionClassName"

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v11, "exceptionMessage"

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v11, "throwClassName"

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v11, "throwMethodName"

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v11, "throwFileName"

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v11, "stackTrace"

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 139
    const/4 v11, -0x1

    const v12, 0x1040472

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 143
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v11, :cond_5

    .line 145
    const/4 v10, 0x0

    .line 146
    .local v10, rp:Landroid/app/enterprise/RestrictionPolicy;
    const-string v11, "enterprise_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 148
    .local v3, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    .line 151
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 153
    const/4 v11, -0x2

    const v12, 0x1040473

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 168
    .end local v3           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    const v11, 0x104046a

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x4000

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Application Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v11, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 179
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/32 v13, 0x493e0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    return-void

    .line 99
    .end local v1           #ccrErrorIntent:Landroid/content/Intent;
    .end local v7           #name:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 100
    .restart local v7       #name:Ljava/lang/CharSequence;
    const v11, 0x104046c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 103
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    .restart local v1       #ccrErrorIntent:Landroid/content/Intent;
    :cond_4
    const-string v11, "AppErrorDialog"

    const-string v12, "CCR reporter can\'t send broadcast because ccrErrorIntent is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 161
    :cond_5
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isAutoSend()Z

    move-result v11

    if-nez v11, :cond_1

    .line 162
    const/4 v11, -0x2

    const v12, 0x1040646

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x1040647

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 21
    .parameter "t"
    .parameter "e"

    .prologue
    .line 82
    :try_start_0
    const-string v17, "KOR"

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "eng"

    sget-object v18, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 83
    invoke-static/range {p2 .. p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    .line 84
    .local v14, stackTrace:Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string/jumbo v17, "java.lang.OutOfMemoryError"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 85
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 86
    const-string v17, "AndroidRuntime"

    const-string/jumbo v18, "uncaughtException : Already creating heap profile... So return"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v14           #stackTrace:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_4

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 164
    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    .line 166
    :goto_1
    return-void

    .line 88
    .restart local v14       #stackTrace:Ljava/lang/String;
    :cond_1
    const/16 v17, 0x1

    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, DATA_PATH:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 95
    .local v10, mFreeMem:J
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    .local v9, mDataFileStats:Landroid/os/StatFs;
    invoke-virtual {v9, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v10, v17, v19

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 99
    .local v4, cal:Ljava/util/Calendar;
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, month:Ljava/lang/String;
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, day:Ljava/lang/String;
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, hour:Ljava/lang/String;
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, min:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 105
    .local v15, sysdump_time:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/log"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v7, fd:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    .line 108
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v17

    if-nez v17, :cond_2

    .line 109
    const-string v17, "AndroidRuntime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    const-wide/32 v17, 0x1312d00

    cmp-long v17, v10, v17

    if-ltz v17, :cond_3

    .line 113
    const-string v17, "AndroidRuntime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "** Saving dumphprof_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".hprof"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/dumphprof_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".hprof"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v3           #DATA_PATH:Ljava/lang/String;
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v5           #day:Ljava/lang/String;
    .end local v7           #fd:Ljava/io/File;
    .end local v8           #hour:Ljava/lang/String;
    .end local v9           #mDataFileStats:Landroid/os/StatFs;
    .end local v10           #mFreeMem:J
    .end local v12           #min:Ljava/lang/String;
    .end local v13           #month:Ljava/lang/String;
    .end local v14           #stackTrace:Ljava/lang/String;
    .end local v15           #sysdump_time:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 157
    .local v16, t2:Ljava/lang/Throwable;
    :try_start_2
    const-string v17, "AndroidRuntime"

    const-string v18, "Error reporting crash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 164
    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 116
    .end local v16           #t2:Ljava/lang/Throwable;
    .restart local v3       #DATA_PATH:Ljava/lang/String;
    .restart local v4       #cal:Ljava/util/Calendar;
    .restart local v5       #day:Ljava/lang/String;
    .restart local v7       #fd:Ljava/io/File;
    .restart local v8       #hour:Ljava/lang/String;
    .restart local v9       #mDataFileStats:Landroid/os/StatFs;
    .restart local v10       #mFreeMem:J
    .restart local v12       #min:Ljava/lang/String;
    .restart local v13       #month:Ljava/lang/String;
    .restart local v14       #stackTrace:Ljava/lang/String;
    .restart local v15       #sysdump_time:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v17, "AndroidRuntime"

    const-string v18, "Failed to generate dumphprof because available size is less than 20M"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 163
    .end local v3           #DATA_PATH:Ljava/lang/String;
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v5           #day:Ljava/lang/String;
    .end local v7           #fd:Ljava/io/File;
    .end local v8           #hour:Ljava/lang/String;
    .end local v9           #mDataFileStats:Landroid/os/StatFs;
    .end local v10           #mFreeMem:J
    .end local v12           #min:Ljava/lang/String;
    .end local v13           #month:Ljava/lang/String;
    .end local v14           #stackTrace:Ljava/lang/String;
    .end local v15           #sysdump_time:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    .line 164
    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    throw v17

    .line 123
    :cond_4
    const/16 v17, 0x1

    :try_start_4
    invoke-static/range {v17 .. v17}, Lcom/android/internal/os/RuntimeInit;->access$102(Z)Z

    .line 125
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Landroid/os/IBinder;

    move-result-object v17

    if-nez v17, :cond_6

    .line 126
    const-string v17, "AndroidRuntime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 137
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "-k -t -n -z -d -o /data/log/dumpstate#sys#syscrash#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getModelName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getSWVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "00000000000000000000000000000000"

    const-string v19, "MD5"

    invoke-static/range {v18 .. v19}, Lcom/samsung/CustomerCrashReport;->makeHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, dumpstateCmd:Ljava/lang/String;
    invoke-static {v6}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 153
    .end local v6           #dumpstateCmd:Ljava/lang/String;
    :goto_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Landroid/os/IBinder;

    move-result-object v18

    new-instance v19, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v17 .. v19}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 164
    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 145
    :cond_5
    :try_start_5
    const-string v17, "-k -t -n -z -d -o /data/log/dumpstate_sys_error"

    invoke-static/range {v17 .. v17}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_3

    .line 149
    :cond_6
    const-string v17, "AndroidRuntime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FATAL EXCEPTION: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 158
    .restart local v16       #t2:Ljava/lang/Throwable;
    :catch_1
    move-exception v17

    goto/16 :goto_2
.end method

.class Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final LOG:Z

.field private static final MSG_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VIBRATION_DURATION:I

.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousDockState:I

.field private mSystemReady:Z

.field private sfx:Landroid/media/Ringtone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 56
    iput v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 57
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;

    .line 147
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 72
    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/DockObserver;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;

    return-object p1
.end method

.method private final init()V
    .locals 7

    .prologue
    const/16 v5, 0x400

    .line 111
    new-array v0, v5, [C

    .line 113
    .local v0, buffer:[C
    const/4 v2, 0x0

    .line 115
    .local v2, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/dock/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .end local v2           #file:Ljava/io/FileReader;
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 118
    .local v4, len:I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 124
    if-eqz v3, :cond_0

    .line 126
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v2, v3

    .line 131
    .end local v3           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    .restart local v2       #file:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz v2, :cond_1

    .line 126
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 127
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 121
    :catch_2
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    if-eqz v2, :cond_1

    .line 126
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_2

    .line 126
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 124
    :cond_2
    :goto_5
    throw v5

    .line 127
    :catch_3
    move-exception v6

    goto :goto_5

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    .restart local v4       #len:I
    :catch_4
    move-exception v5

    goto :goto_0

    .line 124
    .end local v4           #len:I
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_4

    .line 121
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_3

    .line 119
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private final update()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 78
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-enter p0

    .line 83
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, newState:I
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v2, :cond_0

    .line 85
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 86
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 87
    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    .line 101
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1           #newState:I
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 108
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse switch state from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    .line 136
    :try_start_0
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 140
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

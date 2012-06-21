.class Landroid/webkit/WebProperties;
.super Ljava/lang/Object;
.source "WebProperties.java"


# static fields
.field public static final ENABLE_BYPASSQUEUE_INMOBILE_KEY:Ljava/lang/String; = "web.passqmobile"

.field public static final ENABLE_BYPASSQUEUE_NAVAER_KEY:Ljava/lang/String; = "web.passqnaver"

.field public static final ENABLE_DISPLAY_FRAMEINFO_KEY:Ljava/lang/String; = "web.frameinfo"

.field public static final ENABLE_TILT_LOG_KEY:Ljava/lang/String; = "web.tiltlog"

.field public static final IGNORE_MOVE_INTERVAL_KEY:Ljava/lang/String; = "web.movegap"

.field static final LOGTAG:Ljava/lang/String; = "WebProperties"

.field public static final NO_FAST_DRAW_KEY:Ljava/lang/String; = "web.nofastdraw"

.field public static final WEB_TOUCH_LOG_KEY:Ljava/lang/String; = "web.touchlog"


# instance fields
.field public ENABLE_BYPASSQUEUE_INMOBILE:Z

.field public ENABLE_BYPASSQUEUE_NAVAER:Z

.field public ENABLE_DISPLAY_FRAMEINFO:Z

.field public ENABLE_TILT_LOG:Z

.field public IGNORE_MOVE_INTERVAL:I

.field public NO_FAST_DRAW:Z

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_TILT_LOG:Z

    .line 23
    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_BYPASSQUEUE_INMOBILE:Z

    .line 27
    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_BYPASSQUEUE_NAVAER:Z

    .line 31
    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_DISPLAY_FRAMEINFO:Z

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/WebProperties;->IGNORE_MOVE_INTERVAL:I

    .line 38
    iput-boolean v1, p0, Landroid/webkit/WebProperties;->NO_FAST_DRAW:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebProperties;->mContext:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Landroid/webkit/WebProperties;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method _setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string/jumbo v1, "web.tiltlog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 74
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_TILT_LOG:Z

    .line 75
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_TILT_LOG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebProperties;->ENABLE_TILT_LOG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v1, "web.passqmobile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 79
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_BYPASSQUEUE_INMOBILE:Z

    .line 80
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_BYPASSQUEUE_INMOBILE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebProperties;->ENABLE_BYPASSQUEUE_INMOBILE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    const-string/jumbo v1, "web.passqnaver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 84
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_BYPASSQUEUE_NAVAER:Z

    .line 85
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_BYPASSQUEUE_NAVAER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebProperties;->ENABLE_BYPASSQUEUE_NAVAER:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_3
    const-string/jumbo v1, "web.frameinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 89
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebProperties;->ENABLE_DISPLAY_FRAMEINFO:Z

    .line 90
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_DISPLAY_FRAMEINFO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebProperties;->ENABLE_DISPLAY_FRAMEINFO:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_4
    const-string/jumbo v1, "web.movegap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_5

    .line 94
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebProperties;->IGNORE_MOVE_INTERVAL:I

    .line 95
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IGNORE_MOVE_INTERVAL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebProperties;->IGNORE_MOVE_INTERVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :cond_5
    const-string/jumbo v1, "web.nofastdraw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_6

    .line 99
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebProperties;->NO_FAST_DRAW:Z

    .line 100
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO_FAST_DRAW = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebProperties;->NO_FAST_DRAW:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 102
    :cond_6
    const-string/jumbo v1, "web.touchlog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 104
    invoke-virtual {p0, p2}, Landroid/webkit/WebProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    .line 105
    const-string v1, "WebProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WEB_TOUCH_LOG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WebProperties"

    const-string/jumbo v2, "setProperty fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 119
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 55
    const-string v0, "WebProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebProperties;->_setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

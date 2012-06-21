.class public final Landroid/util/safelog/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 19
    invoke-static {p1}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 23
    invoke-static {p1}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 27
    invoke-static {p1}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 31
    invoke-static {p1}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 55
    invoke-static {p2}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 11
    invoke-static {p1}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 15
    invoke-static {p1}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

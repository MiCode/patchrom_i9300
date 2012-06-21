.class public final Landroid/sec/multiwindow/MultiWindowUtil;
.super Ljava/lang/Object;
.source "MultiWindowUtil.java"


# static fields
.field private static final mLaunchers:[Ljava/lang/String;

.field private static final mVisibleActivity:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.launcher"

    aput-object v1, v0, v2

    const-string v1, "com.android.launcher"

    aput-object v1, v0, v3

    const-string v1, "com.android.launcher2.Launcher"

    aput-object v1, v0, v4

    sput-object v0, Landroid/sec/multiwindow/MultiWindowUtil;->mLaunchers:[Ljava/lang/String;

    .line 16
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.welgate.launcher"

    aput-object v1, v0, v2

    const-string v1, "com.mwc.launcher"

    aput-object v1, v0, v3

    const-string v1, "com.sec.MWTaskManager"

    aput-object v1, v0, v4

    sput-object v0, Landroid/sec/multiwindow/MultiWindowUtil;->mVisibleActivity:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final containsLauncher(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"

    .prologue
    .line 56
    sget-object v0, Landroid/sec/multiwindow/MultiWindowUtil;->mLaunchers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 57
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 58
    const/4 v4, 0x1

    .line 61
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 56
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isLauncher(Ljava/lang/String;)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 28
    sget-object v0, Landroid/sec/multiwindow/MultiWindowUtil;->mLaunchers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 29
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const/4 v4, 0x1

    .line 33
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 28
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isVisibleActivity(Ljava/lang/String;)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 42
    sget-object v0, Landroid/sec/multiwindow/MultiWindowUtil;->mVisibleActivity:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 43
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const/4 v4, 0x1

    .line 47
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 42
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

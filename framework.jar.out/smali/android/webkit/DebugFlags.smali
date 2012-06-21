.class Landroid/webkit/DebugFlags;
.super Ljava/lang/Object;
.source "DebugFlags.java"


# static fields
.field public static final BROWSER_FRAME:Z = false

.field public static final CACHE_MANAGER:Z = false

.field public static final CALLBACK_PROXY:Z = false

.field public static final COOKIE_MANAGER:Z = false

.field public static final COOKIE_SYNC_MANAGER:Z = false

.field public static final DRAW_WEBTEXTVIEW:Z = false

.field public static final FRAME_LOADER:Z = false

.field public static final J_WEB_CORE_JAVA_BRIDGE:Z = false

.field public static final LOAD_LISTENER:Z = false

.field static final LOGTAG:Ljava/lang/String; = "DebugFlags"

.field public static final NETWORK:Z

.field public static final SSL_ERROR_HANDLER:Z

.field public static final STREAM_LOADER:Z

.field public static final URL_UTIL:Z

.field public static final WEB_BACK_FORWARD_LIST:Z

.field public static final WEB_SETTINGS:Z

.field public static final WEB_SYNC_MANAGER:Z

.field public static final WEB_TEXT_VIEW:Z

.field public static WEB_TOUCH_LOG:Z

.field public static final WEB_VIEW:Z

.field public static final WEB_VIEW_CORE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

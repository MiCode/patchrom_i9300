.class public final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$ViewState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$InvokeNotifyID;,
        Landroid/webkit/WebViewCore$InvokeEventparams;,
        Landroid/webkit/WebViewCore$NotificationPermissionsData;,
        Landroid/webkit/WebViewCore$ImageSelectionCopiedData;,
        Landroid/webkit/WebViewCore$SelectionCopiedData;,
        Landroid/webkit/WebViewCore$CopyParams;,
        Landroid/webkit/WebViewCore$EditableParams;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$AutoFillData;,
        Landroid/webkit/WebViewCore$TouchHighlightData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static mRepaintScheduled:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkit/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private mDrawLayersIsScheduled:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

.field private mLowMemoryUsageThresholdMb:I

.field private mNativeClass:I

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mSplitPictureIsScheduled:Z

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    :try_start_0
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x60

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "REVEAL_SELECTION"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "REQUEST_LABEL"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SCROLL_TEXT_INPUT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LOAD_URL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STOP_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KEY_DOWN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "KEY_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "VIEW_SIZE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GO_BACK_FORWARD"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SET_SCROLL_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RESTORE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "PAUSE_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RESUME_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CLEAR_CACHE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CLEAR_HISTORY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "REPLACE_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "PASS_TO_JS"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SET_GLOBAL_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SET_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DOC_HAS_IMAGES"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FAKE_CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DELETE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "LISTBOX_CHOICES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SINGLE_LISTBOX_CHOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MESSAGE_RELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SET_BACKGROUND_COLOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "SET_MOVE_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "SAVE_DOCUMENT_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "129"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WEBKIT_DRAW"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "131"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "POST_URL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "SPLIT_PICTURE_SET"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CLEAR_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "SET_MOVE_MOUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "REQUEST_CURSOR_HREF"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ADD_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "LOAD_DATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "TOUCH_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "TOUCH_EVENT"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SET_ACTIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ON_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ON_RESUME"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FREE_MEMORY"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "VALID_NODE_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "SAVE_WEBARCHIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "WEBKIT_DRAW_LAYERS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "REMOVE_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "DELKEY_SIML_FOR_COUNT"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "GET_TEXT_AROUND_CURSOR"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "SET_SELECTION_FOR_EDITING"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "DELETE_SURROUNDING_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "GET_BODY_HTML"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "GET_SLECTION_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "GET_BODY_PLAIN_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "EXEC_COMMAND"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "COPY_SAVE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "DRAW_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "GET_EMAIL_MARKUP"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "SET_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "GET_CARET_RECT"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "SET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "GET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "CAN_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "CAN_REDO"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "CLEAR_REDO_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "GET_BODY_EMPTY"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "CONTENT_SELECTION_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "RESTORE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "SAVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "CHECK_SELECTION_AT_BOUNDRY"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "MOVE_SINGLE_CURSOR_HANDLER"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "UPDATE_IM_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "SET_COMPOSING_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "GET_SLECTION_OFFSET_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "GET_STATE_IN_RICHLY_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "SHOW_ACTION_BAR"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "INSERT_IMAGE_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "RESIZE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "GET_CURRENT_FONTSIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "CHECK_SELECTED_CLOSEST_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "CHECK_END_OF_WORD_AT_POSITION"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "GET_CURRENT_FONTVALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "COPY_MOVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "CLEAR_TEXT_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "CLOSEST_WORD_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "COPY_BEGIN_EXTEND_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "ADVANCE_TEXT_SELECTION_ALL"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "UNMARK_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "SET_COLOR_CHOICE"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 3274
    sput-boolean v4, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void

    .line 84
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 85
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "webcore"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 117
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 122
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 127
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 132
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 134
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 143
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 145
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 146
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 147
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 148
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 149
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 151
    new-instance v5, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkit/DeviceMotionAndOrientationManager;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 2858
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2859
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2860
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2980
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3014
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 167
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 168
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 169
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 172
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 178
    const-class v6, Landroid/webkit/WebViewCore;

    monitor-enter v6

    .line 179
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 181
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    .local v4, t:Ljava/lang/Thread;
    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    const-class v5, Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .end local v4           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    new-instance v5, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 197
    new-instance v5, Landroid/webkit/WebSettings;

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v5, v6, v7}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 200
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 202
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 204
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 208
    iget-object v5, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 210
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 211
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 215
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 216
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 218
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighUsageDeltaMb:I

    .line 221
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 223
    .local v1, init:Landroid/os/Message;
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    return-void

    .line 186
    .end local v1           #init:Landroid/os/Message;
    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method static synthetic access$10000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$10100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkit/WebViewCore;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeNotificationIDback(II)V

    return-void
.end method

.method static synthetic access$10800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSplitContent(I)V

    return-void
.end method

.method static synthetic access$10902(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$11000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$11100(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$11400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePluginSurfaceReady()V

    return-void
.end method

.method static synthetic access$11500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$11600(Landroid/webkit/WebViewCore;III)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->useMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$11800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeAutoFillForm(I)V

    return-void
.end method

.method static synthetic access$11900(Landroid/webkit/WebViewCore;IIIZZFI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDrawLayers()V

    return-void
.end method

.method static synthetic access$12000(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V

    return-void
.end method

.method static synthetic access$12100(Landroid/webkit/WebViewCore;IIFZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V

    return-void
.end method

.method static synthetic access$12300(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->applyreadability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12400(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->loadinitialJs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendColorPickerChoice(I)V

    return-void
.end method

.method static synthetic access$12602(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRevealSelection()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeClick(IIZ)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;IZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeUnmarkWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRecalcWidthAndForceLayout()V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeGetSelectionOffsetImage(IIII)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentSelectionType()I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanUndo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V

    return-void
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveSingleCursorHandler(II)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetComposingRegion(II)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionNone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetComposingSelectionNone()V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeUpdateIMSelection(II)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCheckSelectedClosestWord()V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetStateInRichlyEditableText()I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeinsertImageContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeresizeImage(II)V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativegetCurrentFontSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativegetCurrentFontValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitActionBarDraw()V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewCore;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeCheckEndOfWordAtPosition(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewCore;IIIIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIIIZ)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewCore;I[I[I[IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(I[I[I[IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$8300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$8700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeStopPaintingCaret()V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveImageSource(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeModifySelection(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebViewCore;[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$9700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$9800(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$9900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 1
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3865
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3866
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3867
    return-object v0
.end method

.method private native applyreadability(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private calculateWindowWidth(I)I
    .locals 3
    .parameter "viewWidth"

    .prologue
    .line 2914
    move v0, p1

    .line 2915
    .local v0, width:I
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2916
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2918
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2920
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEmailDefaultViewPortWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2934
    :cond_0
    :goto_0
    return v0

    .line 2924
    :cond_1
    const/16 v0, 0x3d4

    goto :goto_0

    .line 2926
    :cond_2
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_3

    .line 2928
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2931
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3915
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3920
    :goto_0
    return-void

    .line 3918
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 2797
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2798
    if-eqz p1, :cond_0

    .line 2799
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2801
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 3657
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3660
    :goto_0
    return-void

    .line 3658
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "onlyIfImeIsShowing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3225
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3231
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 3232
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 3246
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 3236
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v4, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_2

    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3239
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_4

    .line 3240
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    move v3, v2

    .line 3236
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 3243
    .restart local v0       #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;
    .locals 3
    .parameter "pluginView"

    .prologue
    const/4 v0, 0x0

    .line 3841
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3858
    :goto_0
    return-object v0

    .line 3845
    :cond_0
    if-nez p1, :cond_1

    .line 3846
    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3851
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3853
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 3854
    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 3856
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3857
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 3876
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 3877
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 4
    .parameter "standardLoad"

    .prologue
    const/4 v1, 0x0

    .line 3297
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 3299
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 3320
    :goto_0
    return-void

    .line 3301
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 3302
    .local v0, updateViewState:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 3306
    if-nez v0, :cond_2

    .line 3307
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 3311
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3312
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3317
    :cond_3
    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 3318
    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 3319
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    goto :goto_0

    .end local v0           #updateViewState:Z
    :cond_4
    move v0, v1

    .line 3301
    goto :goto_1
.end method

.method private formDidBlur(I)V
    .locals 3
    .parameter "nodePointer"

    .prologue
    .line 355
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3793
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_0

    .line 3814
    :goto_0
    return-object v3

    .line 3797
    :cond_0
    invoke-static {v3}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 3799
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3800
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3801
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3806
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3807
    :catch_0
    move-exception v0

    .line 3808
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3809
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3810
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 2947
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 2948
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 2950
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_1

    .line 2951
    const-wide/16 v2, 0x0

    .line 2957
    :cond_0
    return-wide v2

    .line 2953
    :cond_1
    const-wide/16 v2, 0x0

    .line 2954
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 2955
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 3833
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3838
    :goto_0
    return-void

    .line 3836
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 233
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 237
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 239
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 241
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 243
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 246
    invoke-static {}, Landroid/webkit/NotificationPermissions;->getInstance()Landroid/webkit/NotificationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/NotificationPermissions;->createHandler()V

    .line 250
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 254
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    :cond_0
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 320
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "core"

    .prologue
    .line 3174
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    .line 3783
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3784
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3785
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3786
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3788
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void

    .line 3785
    .restart local v0       #message:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .locals 9
    .parameter "evt"
    .parameter "isDown"

    .prologue
    const/4 v8, 0x0

    .line 2820
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2821
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 2823
    .local v2, unicodeChar:I
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2826
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2829
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    .line 2832
    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2

    .line 2837
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2838
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v0, v3, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2849
    :cond_1
    :goto_0
    return-void

    .line 2847
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2805
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2806
    return-void
.end method

.method private native loadinitialJs(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeAutoFillForm(I)V
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCheckEndOfWordAtPosition(II)Z
.end method

.method private native nativeCheckSelectedClosestWord()V
.end method

.method private native nativeCheckSelectionAtBoundry()I
.end method

.method private native nativeCheckSpellingOfWordAtPosition(II)Z
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClearTextSelection(II)V
.end method

.method private native nativeClick(IIZ)V
.end method

.method private native nativeCloseIdleConnections()V
.end method

.method private native nativeContentInvalidateAll()V
.end method

.method private native nativeContentSelectionType()I
.end method

.method private native nativeCopyAndSaveImage(Ljava/lang/String;)Z
.end method

.method private native nativeCopyMoveSelection(IIIZZFI)V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDeleteSurroundingText(II)V
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method private native nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetBodyEmpty()Z
.end method

.method private native nativeGetBodyHTML()Ljava/lang/String;
.end method

.method private native nativeGetBodyText()Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetCursorRect(Z)Landroid/graphics/Rect;
.end method

.method private native nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
.end method

.method private native nativeGetImageSize(II)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelectedImageRect()Landroid/graphics/Rect;
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSelectionGranularity()I
.end method

.method private native nativeGetSelectionMultiColInfo()Z
.end method

.method private native nativeGetSelectionNone()Z
.end method

.method private native nativeGetSelectionOffset()Landroid/graphics/Point;
.end method

.method private native nativeGetSelectionOffsetImage(IIII)V
.end method

.method private native nativeGetStateInRichlyEditableText()I
.end method

.method private native nativeGetTextAroundCursor(IZ)Ljava/lang/String;
.end method

.method private native nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeHandleTouchEvent(I[I[I[IIII)Z
.end method

.method private native nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeModifySelection(II)Ljava/lang/String;
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativeMoveSingleCursorHandler(II)V
.end method

.method private native nativeNotificationIDback(II)V
.end method

.method private native nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
.end method

.method private native nativeNotificationResponseback(Ljava/lang/String;I)V
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativePluginSurfaceReady()V
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecalcWidthAndForceLayout()V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I
.end method

.method private native nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeRestorePreviousSelectionController()V
.end method

.method private native nativeResume()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(II)Ljava/lang/String;
.end method

.method private native nativeRevealSelection()V
.end method

.method private native nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSaveSelectionController()V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeScrollLayer(ILandroid/graphics/Rect;)V
.end method

.method private native nativeSelectClosestWord(IIFZ)Z
.end method

.method private native nativeSendColorPickerChoice(I)V
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetComposingRegion(II)V
.end method

.method private native nativeSetComposingSelectionNone()V
.end method

.method private native nativeSetEditable(Z)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetIsPaused(Z)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSelectionEditable(II)V
.end method

.method private native nativeSetSelectionEditableImage(II)V
.end method

.method private native nativeSetSelectionNone()V
.end method

.method private native nativeSetSize(IIIFIIIIZ)V
.end method

.method private native nativeSetWebTextViewOnOffStatus(Z)V
.end method

.method private native nativeSimulateDelKeyForCount(I)V
.end method

.method private native nativeSplitContent(I)V
.end method

.method private native nativeStopPaintingCaret()V
.end method

.method private native nativeTouchUp(IIIIIZ)V
.end method

.method private native nativeUndoRedoStateReset()V
.end method

.method private native nativeUnmarkWord(Ljava/lang/String;)V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeUpdateIMSelection(II)V
.end method

.method private native nativeUpdateLayers(II)Z
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private native nativeWebTextSelectionAll(IIII)V
.end method

.method private native nativegetCurrentFontSize()I
.end method

.method private native nativegetCurrentFontValue()I
.end method

.method private native nativeinsertImageContent(Ljava/lang/String;)V
.end method

.method private native nativeresizeImage(II)V
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .parameter "need"

    .prologue
    const/4 v1, 0x0

    .line 3626
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3627
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3631
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3627
    goto :goto_0
.end method

.method private openColorChooser()V
    .locals 3

    .prologue
    .line 3760
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3761
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "openColorChooser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x95

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3764
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3766
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private openFileChooser(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "acceptType"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->openFileChooser(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 368
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 369
    const-string v7, ""

    .line 372
    .local v7, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 378
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 382
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, uriString:Ljava/lang/String;
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v8}, Landroid/webkit/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #uriString:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 382
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 385
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 391
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 293
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 3139
    if-eqz p0, :cond_0

    .line 3140
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return-void

    .line 3142
    :cond_1
    monitor-enter p0

    .line 3143
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 3144
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    monitor-exit p0

    goto :goto_0

    .line 3149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3147
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 3148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 3149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3114
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3115
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3116
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3118
    return-void
.end method

.method private requestDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 3747
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 3748
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x91

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3750
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 3751
    .local v1, typeval:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3752
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 3753
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3754
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3756
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #typeval:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 5
    .parameter "showKeyboard"

    .prologue
    const/4 v1, 0x0

    .line 3738
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3739
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3743
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3739
    goto :goto_0
.end method

.method private requestKeyboardWithSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 3728
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3729
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3734
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[III)V
    .locals 4
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "pointer"

    .prologue
    const/4 v3, 0x0

    .line 3708
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 3709
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->clearTextEntry()V

    .line 3710
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p4, v1, v3

    .line 3711
    .local v1, selectedArray:[I
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 3712
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 3713
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 3714
    iput-object v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 3715
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 3716
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 3717
    iput-boolean v3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 3718
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8e

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3723
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    .end local v1           #selectedArray:[I
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[I[II)V
    .locals 3
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "pointer"

    .prologue
    .line 3690
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3691
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->clearTextEntry()V

    .line 3692
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 3693
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 3694
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 3695
    iput-object p4, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 3696
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 3697
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 3698
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 3699
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8e

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3703
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1
    .parameter "scale"
    .parameter "textWrapScale"

    .prologue
    .line 3615
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 3617
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 3618
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3619
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 3622
    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 3180
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 3181
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 3182
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3183
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 3182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3185
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 3186
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 3187
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 3188
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3122
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3123
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3124
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3126
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 299
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 304
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 3155
    if-eqz p0, :cond_0

    .line 3157
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    .line 3171
    :cond_0
    :goto_0
    return-void

    .line 3160
    :cond_1
    monitor-enter p0

    .line 3161
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 3162
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    monitor-exit p0

    goto :goto_0

    .line 3169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3165
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 3166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 3168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 3169
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "autoname"

    .prologue
    .line 2812
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3934
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3935
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3937
    :cond_0
    return-void
.end method

.method private sendFindAgain()V
    .locals 2

    .prologue
    .line 3664
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3667
    :goto_0
    return-void

    .line 3665
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendNotifyProgressFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 3250
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 3251
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3254
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 3256
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 3259
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 3260
    return-void
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageType"
    .parameter "argument"

    .prologue
    .line 3129
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3133
    :goto_0
    return-void

    .line 3132
    :cond_0
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendUpdateTextEntry()V
    .locals 2

    .prologue
    .line 2938
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2939
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2942
    :cond_0
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3267
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3268
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3272
    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 3924
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3929
    :goto_0
    return-void

    .line 3927
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3
    .parameter "queryId"
    .parameter "preview"

    .prologue
    .line 3770
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3771
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x85

    new-instance v2, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3775
    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 15
    .parameter "updateViewState"

    .prologue
    .line 3329
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    if-nez v11, :cond_1

    .line 3611
    :cond_0
    :goto_0
    return-void

    .line 3334
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 3337
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_3

    .line 3338
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_2

    .line 3339
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3342
    :cond_2
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_3

    .line 3343
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3348
    :cond_3
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->forceUserScalable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3349
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 3350
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_11

    .line 3351
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_4

    .line 3352
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3355
    :cond_4
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_5

    .line 3356
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3370
    :cond_5
    :goto_1
    const/high16 v0, 0x3f80

    .line 3372
    .local v0, adjust:F
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->isDefaultZoomChanged()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 3375
    :cond_6
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_13

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v11

    const/high16 v12, 0x42c8

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0x64

    if-eq v11, v12, :cond_13

    .line 3376
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v0

    .line 3402
    :cond_7
    :goto_2
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v11

    cmpl-float v11, v0, v11

    if-eqz v11, :cond_8

    .line 3403
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v11, v11, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x8b

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 3406
    :cond_8
    const/high16 v11, 0x42c8

    mul-float/2addr v11, v0

    float-to-int v2, v11

    .line 3408
    .local v2, defaultScale:I
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_9

    .line 3409
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3411
    :cond_9
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_a

    .line 3412
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3414
    :cond_a
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_b

    .line 3415
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3419
    :cond_b
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_c

    .line 3420
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v11, :cond_c

    .line 3421
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3424
    :cond_c
    iget-boolean v11, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v11, :cond_d

    .line 3425
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3426
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3427
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3429
    :cond_d
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v11, v12, :cond_e

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v11, :cond_e

    .line 3431
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3433
    :cond_e
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_f

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v11, v12, :cond_f

    .line 3435
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3437
    :cond_f
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v11, :cond_10

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v11, v2, :cond_10

    .line 3438
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 3442
    :cond_10
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v11, :cond_15

    if-nez p1, :cond_15

    .line 3444
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3445
    new-instance v7, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v7}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    .line 3446
    .local v7, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 3447
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 3448
    iput v0, v7, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 3450
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 3452
    const/4 v11, 0x0

    iput v11, v7, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 3453
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 3454
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v11, v11, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x6d

    invoke-static {v11, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3360
    .end local v0           #adjust:F
    .end local v2           #defaultScale:I
    .end local v7           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :cond_11
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_12

    .line 3361
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    const/16 v12, 0x32

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3363
    :cond_12
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_5

    .line 3364
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    const/16 v12, 0xc8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    .line 3379
    .restart local v0       #adjust:F
    :cond_13
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_7

    .line 3380
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3382
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/String;

    const-string v12, "com.android.browser"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3384
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3385
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    goto/16 :goto_2

    .line 3389
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_14
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_7

    .line 3390
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_2

    .line 3463
    .restart local v2       #defaultScale:I
    :cond_15
    iget v8, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 3464
    .local v8, viewportWidth:I
    if-nez v8, :cond_17

    .line 3468
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v9

    .line 3469
    .local v9, webViewWidth:I
    int-to-float v11, v9

    div-float/2addr v11, v0

    float-to-int v8, v11

    .line 3470
    if-nez v8, :cond_16

    .line 3478
    :cond_16
    :goto_3
    new-instance v11, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v11}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3479
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 3480
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 3481
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 3482
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 3483
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 3484
    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    if-nez v11, :cond_18

    iget v11, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    if-nez v11, :cond_18

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v11, :cond_18

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v11}, Landroid/webkit/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v12, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 3489
    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_19

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v12, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 3490
    iget-boolean v11, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v11, :cond_1b

    .line 3491
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    .line 3492
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 3493
    iget v11, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1a

    .line 3494
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3517
    :goto_6
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v11, v11, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v11, :cond_1f

    .line 3523
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3526
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3527
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v11, v11, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3528
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3531
    iget v11, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3532
    const/high16 v11, -0x4080

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3533
    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3534
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3541
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v12, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkit/WebViewCore$EventHub;->access$13000(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3542
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v12, 0x0

    const/16 v13, 0x69

    invoke-static {v12, v13, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v11, v12}, Landroid/webkit/WebViewCore$EventHub;->access$12800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3476
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v9           #webViewWidth:I
    :cond_17
    int-to-float v11, v8

    iget v12, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9       #webViewWidth:I
    goto/16 :goto_3

    .line 3484
    :cond_18
    const/4 v11, 0x0

    goto :goto_4

    .line 3489
    :cond_19
    const/4 v11, 0x0

    goto :goto_5

    .line 3496
    :cond_1a
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_6

    .line 3499
    :cond_1b
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_1c

    .line 3500
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v13, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto :goto_6

    .line 3502
    :cond_1c
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v11, :cond_1d

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v11, v9, :cond_1d

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 3504
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    int-to-float v13, v9

    iget v14, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3507
    :cond_1d
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3508
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 3510
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3512
    :cond_1e
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3545
    :cond_1f
    if-nez v8, :cond_20

    .line 3548
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_0

    .line 3550
    :cond_20
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3554
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 3555
    .local v5, tentativeScale:F
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-nez v11, :cond_23

    .line 3562
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3563
    int-to-float v11, v9

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 3564
    .local v6, tentativeViewWidth:I
    invoke-direct {p0, v6}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v10

    .line 3568
    .local v10, windowWidth:I
    int-to-float v11, v9

    int-to-float v12, v10

    div-float/2addr v11, v12

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3569
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v11

    if-nez v11, :cond_21

    .line 3571
    iget v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3573
    :cond_21
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 3575
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getReadingLevelScale()F

    move-result v12

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3590
    .end local v6           #tentativeViewWidth:I
    .end local v10           #windowWidth:I
    :cond_22
    :goto_7
    int-to-float v11, v9

    iget v12, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3596
    iget v11, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v11, :cond_24

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    :goto_8
    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3599
    int-to-float v11, v9

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3601
    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3602
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3605
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v12, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkit/WebViewCore$EventHub;->access$13000(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3608
    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    .line 3580
    :cond_23
    iput v5, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    goto :goto_7

    .line 3596
    :cond_24
    iget v11, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    int-to-float v11, v11

    iget v12, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    int-to-float v12, v8

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    goto :goto_8
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;II)V
    .locals 3
    .parameter "childView"
    .parameter "orientation"
    .parameter "npp"

    .prologue
    .line 3820
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3829
    :goto_0
    return-void

    .line 3824
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3825
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3826
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3827
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3828
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"

    .prologue
    .line 3896
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3897
    new-instance v0, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3898
    .local v0, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3899
    iput p2, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3900
    iput p3, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3901
    iput p4, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3902
    iput p5, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3903
    iput p6, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3904
    iput p7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3905
    iput p8, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3906
    iput p9, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3907
    iput p10, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3908
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3911
    .end local v0           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3872
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3873
    return-void
.end method

.method private updateTextSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    .line 3648
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3649
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3653
    :cond_0
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 3636
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3637
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3640
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3641
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3643
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 3325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 3326
    return-void
.end method

.method private useMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 3940
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->useMock()V

    .line 3941
    return-void
.end method

.method private viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V
    .locals 14
    .parameter "data"

    .prologue
    .line 2864
    iget v5, p1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2865
    .local v5, w:I
    iget v10, p1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2866
    .local v10, h:I
    iget v3, p1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2867
    .local v3, textwrapWidth:I
    iget v4, p1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2872
    .local v4, scale:F
    if-nez v5, :cond_1

    .line 2873
    const-string/jumbo v0, "webcore"

    const-string/jumbo v6, "skip viewSizeChanged as w is 0"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_0
    :goto_0
    return-void

    .line 2876
    :cond_1
    invoke-direct {p0, v5}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v1

    .line 2877
    .local v1, width:I
    move v2, v10

    .line 2878
    .local v2, height:I
    if-eq v1, v5, :cond_2

    .line 2879
    iget v11, p1, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    .line 2880
    .local v11, heightWidthRatio:F
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_5

    move v13, v11

    .line 2881
    .local v13, ratio:F
    :goto_1
    int-to-float v0, v1

    mul-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2883
    .end local v11           #heightWidthRatio:F
    .end local v13           #ratio:F
    :cond_2
    iget v0, p1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    if-lez v0, :cond_6

    iget v6, p1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    :goto_2
    iget v7, p1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    iget v8, p1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iget-boolean v9, p1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZ)V

    .line 2887
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v0, :cond_7

    const/4 v12, 0x1

    .line 2888
    .local v12, needInvalidate:Z
    :goto_3
    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2889
    iput v10, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2890
    iput v4, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2891
    if-eqz v12, :cond_3

    .line 2895
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2897
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v6, 0x0

    const/16 v7, 0x75

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v6}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2900
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v6

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_4

    .line 2901
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 2905
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isComposerImageTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2907
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitRotationActionOnImage()V

    goto :goto_0

    .line 2880
    .end local v12           #needInvalidate:Z
    .restart local v11       #heightWidthRatio:F
    :cond_5
    int-to-float v0, v10

    int-to-float v6, v5

    div-float v13, v0, v6

    goto :goto_1

    .end local v11           #heightWidthRatio:F
    :cond_6
    move v6, v10

    .line 2883
    goto :goto_2

    .line 2887
    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private webkitActionBarDraw()V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1220
    :cond_0
    return-void
.end method

.method private webkitDraw()V
    .locals 4

    .prologue
    .line 3036
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 3037
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 3039
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 3040
    iget v1, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v1, :cond_1

    .line 3041
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3043
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3051
    :cond_0
    :goto_0
    return-void

    .line 3049
    :cond_1
    iput-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 3050
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V

    goto :goto_0
.end method

.method private webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 6
    .parameter "draw"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3054
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 3055
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v0

    iput-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 3056
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 3057
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3058
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3060
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEmailDefaultViewPortWidth()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 3074
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    if-eqz v0, :cond_1

    .line 3075
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3076
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3078
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_2

    .line 3079
    iput-boolean v5, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    .line 3080
    iput-boolean v4, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3084
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v5, v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_3

    .line 3085
    invoke-direct {p0, v4}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 3090
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3093
    :cond_4
    return-void

    .line 3060
    :cond_5
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 3067
    :cond_7
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ne v0, v3, :cond_8

    const/16 v0, 0x3d4

    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_2

    :cond_9
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_2
.end method

.method private webkitDrawLayers()V
    .locals 3

    .prologue
    const/16 v2, 0x75

    .line 3019
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 3020
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    if-nez v0, :cond_1

    .line 3021
    :cond_0
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3022
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    .line 3033
    :goto_0
    return-void

    .line 3026
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    iget v1, v1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewCore;->nativeUpdateLayers(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3028
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    .line 3030
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3031
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitRotationActionOnImage()V
    .locals 3

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x94

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1227
    :cond_0
    return-void
.end method

.method private webkitSelectionControlDraw(I)V
    .locals 11
    .parameter "selectionController"

    .prologue
    const/4 v10, 0x0

    const/16 v2, 0xd3

    const/16 v9, 0x8c

    const/4 v8, 0x0

    .line 1145
    new-instance v6, Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-direct {v6}, Landroid/webkit/WebViewCore$SelectionCopiedData;-><init>()V

    .line 1160
    .local v6, Data:Landroid/webkit/WebViewCore$SelectionCopiedData;
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkit/WebViewCore$EventHub;->access$600(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$700(Landroid/webkit/WebViewCore$EventHub;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$700(Landroid/webkit/WebViewCore$EventHub;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v10, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v1, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v2, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v3, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v4, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewCore;->nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1169
    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw Selection unable to select"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1174
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionGranularity()I

    move-result v0

    iput v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    .line 1175
    iput p1, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    .line 1177
    iget v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-nez v0, :cond_4

    .line 1178
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionMultiColInfo()Z

    move-result v0

    iput-boolean v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->isMulticol:Z

    .line 1184
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1198
    .local v7, regionRect:Landroid/graphics/Rect;
    iget-object v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1205
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_3

    .line 1206
    invoke-direct {p0, v8}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    .line 1210
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1180
    .end local v7           #regionRect:Landroid/graphics/Rect;
    :cond_4
    iput-boolean v8, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->isMulticol:Z

    goto :goto_1
.end method


# virtual methods
.method declared-synchronized IsWordMisspelledAtPosition(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3103
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeCheckSpellingOfWordAtPosition(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 338
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 339
    return-void
.end method

.method contentDraw()V
    .locals 3

    .prologue
    .line 3196
    monitor-enter p0

    .line 3197
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 3199
    :cond_0
    monitor-exit p0

    .line 3211
    :goto_0
    return-void

    .line 3203
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3204
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 3210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3207
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_4

    monitor-exit p0

    goto :goto_0

    .line 3208
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 3209
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3210
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 2780
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v1

    .line 2785
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$1002(Landroid/webkit/WebViewCore$EventHub;Z)Z

    .line 2786
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2788
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$13200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2789
    monitor-exit v1

    .line 2790
    return-void

    .line 2789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 605
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 610
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 608
    .local v0, message:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 609
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 409
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 416
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 551
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 448
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 459
    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3778
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkit/DeviceMotionService;
    .locals 3

    .prologue
    .line 3950
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    if-nez v0, :cond_0

    .line 3951
    new-instance v0, Landroid/webkit/DeviceMotionService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceMotionService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    .line 3954
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkit/DeviceOrientationService;
    .locals 3

    .prologue
    .line 3958
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    if-nez v0, :cond_0

    .line 3959
    new-instance v0, Landroid/webkit/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceOrientationService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    .line 3962
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    return-object v0
.end method

.method declared-synchronized getSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3097
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectedText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3098
    .local v0, str:Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 3097
    .end local v0           #str:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 3286
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 270
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public isEditableSupport()Z
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 346
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 559
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 581
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method layersDraw()V
    .locals 3

    .prologue
    .line 3215
    monitor-enter p0

    .line 3216
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 3220
    :goto_0
    return-void

    .line 3217
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 3218
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x94

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3219
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native nativeGetWebFeedLinks()[Landroid/webkit/WebFeedLink;
.end method

.method native nativeRequiresSmartFit()Z
.end method

.method protected notificationManagerCancel(I)V
    .locals 1
    .parameter "notificationID"

    .prologue
    .line 528
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onNotificationManagerCancelPrompt(I)V

    .line 530
    return-void
.end method

.method protected notificationManagershow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "iconUrl"
    .parameter "titleStr"
    .parameter "bodyStr"
    .parameter "counter"

    .prologue
    .line 497
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v5, Landroid/webkit/WebViewCore$6;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$6;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/NotificationPermissions$Callback;)V

    .line 517
    return-void
.end method

.method protected notificationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onNotificationPermissionsHidePrompt()V

    .line 542
    return-void
.end method

.method protected notificationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 472
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$5;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$5;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/NotificationPermissions$Callback;)V

    .line 484
    return-void
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 433
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 438
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 439
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "spaceNeeded"

    .prologue
    .line 424
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 430
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 2772
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$13100(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2773
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$13000(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2769
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 2853
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 2733
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2734
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2742
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2743
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2746
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2747
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2755
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2756
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 2751
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2752
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2737
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2738
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2729
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$12700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2730
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2759
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$12800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2761
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2764
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$12900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2765
    return-void
.end method

.method protected setInstallableWebApp()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->setInstallableWebApp()V

    .line 599
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 3945
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    .line 3947
    return-void
.end method

.method protected setNavType(I)V
    .locals 3
    .parameter "navType"

    .prologue
    .line 614
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x92

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 616
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 617
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method declared-synchronized setWebTextViewOnOffStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetWebTextViewOnOffStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3110
    monitor-exit p0

    return-void

    .line 3109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 3280
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 3281
    return-void
.end method

.method splitContent(I)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2962
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v0, :cond_0

    .line 2963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 2964
    const/16 v0, 0x85

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2966
    :cond_0
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 2715
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 2717
    :cond_0
    return-void
.end method

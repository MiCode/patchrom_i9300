.class public Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$1;,
        Landroid/webkit/WebSettings$EventHandler;,
        Landroid/webkit/WebSettings$AutoFillProfile;,
        Landroid/webkit/WebSettings$NotificationState;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static mDoubleTapToastCount:I

.field private static mEnableDoubleTapTest:Z

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAdvanceSelectionBgColor:J

.field private mAdvanceTextSelection:Z

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private mBuiltInZoomControls:Z

.field private mBypassQueueTouch:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDisableSelection:Z

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEditableSupport:Z

.field private mEmailDefaultViewPortWidth:I

.field private mEnableDoubleTapBlockZoom:Z

.field private mEnableMagnifier:Z

.field private mEnableSmoothTransition:Z

.field private mEnableTockTock:Z

.field private final mEventHandler:Landroid/webkit/WebSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFileSystemPath:Ljava/lang/String;

.field private mFileSystemPathHasBeenSet:Z

.field private mFilesystemEnabled:Z

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mIsBrowserApp:Z

.field private mIsSpellCheckEnabled:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mMotionFilter:I

.field private mMoveFilter:Z

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mNotificationState:Landroid/webkit/WebSettings$NotificationState;

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportRssSniffing:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextReadability:Z

.field private mTextSize:I

.field private mTouchDebug:Z

.field private mUseDefaultClipboard:Z

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseEmailViewport:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWOFFEnabled:Z

.field private mWebGLEnabled:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWebnotificationDatabasePath:Ljava/lang/String;

.field private mWebnotificationEnabled:Z

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebSettings;->mEnableDoubleTapTest:Z

    .line 361
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 471
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 178
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 180
    iput v4, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 181
    const-string/jumbo v2, "sans-serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 182
    const-string/jumbo v2, "monospace"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 183
    const-string/jumbo v2, "sans-serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 184
    const-string/jumbo v2, "serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 185
    const-string v2, "cursive"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 186
    const-string v2, "fantasy"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 191
    iput v3, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 192
    iput v3, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 193
    const/16 v2, 0x10

    iput v2, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 194
    const/16 v2, 0xd

    iput v2, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 195
    iput v1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 196
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 197
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 199
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 200
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 201
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 202
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 204
    sget-object v2, Landroid/webkit/WebSettings$NotificationState;->ON:Landroid/webkit/WebSettings$NotificationState;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mNotificationState:Landroid/webkit/WebSettings$NotificationState;

    .line 206
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 207
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDoubleTree:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 210
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseEmailViewport:Z

    .line 215
    const/16 v2, 0x258

    iput v2, p0, Landroid/webkit/WebSettings;->mEmailDefaultViewPortWidth:I

    .line 217
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 218
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 219
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 220
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 221
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 223
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 224
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 225
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 226
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 227
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 228
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 230
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 231
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 232
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 235
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 236
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 240
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 241
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 242
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 243
    iput v4, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 244
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 245
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 246
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 247
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 248
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 249
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 250
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 251
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 252
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 253
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 254
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 255
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 257
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSupportRssSniffing:Z

    .line 258
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mIsSpellCheckEnabled:Z

    .line 261
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 262
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    .line 264
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    .line 265
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultClipboard:Z

    .line 266
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableMagnifier:Z

    .line 267
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDisableSelection:Z

    .line 268
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mAdvanceSelectionBgColor:J

    .line 272
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    .line 276
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableDoubleTapBlockZoom:Z

    .line 280
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mWebGLEnabled:Z

    .line 289
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableTockTock:Z

    .line 292
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mFileSystemPathHasBeenSet:Z

    .line 293
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFileSystemPath:Ljava/lang/String;

    .line 294
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mFilesystemEnabled:Z

    .line 297
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mWebnotificationDatabasePath:Ljava/lang/String;

    .line 298
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mWebnotificationEnabled:Z

    .line 302
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mWOFFEnabled:Z

    .line 306
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mIsBrowserApp:Z

    .line 358
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 370
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mTextReadability:Z

    .line 462
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mTouchDebug:Z

    .line 463
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBypassQueueTouch:Z

    .line 464
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mMoveFilter:Z

    .line 995
    const/4 v2, 0x3

    iput v2, p0, Landroid/webkit/WebSettings;->mMotionFilter:I

    .line 472
    new-instance v2, Landroid/webkit/WebSettings$EventHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V

    iput-object v2, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    .line 473
    iput-object p1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    .line 474
    iput-object p2, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    .line 475
    const v2, 0x10400b8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 478
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 479
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 480
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 482
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 483
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 484
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 486
    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 491
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 493
    return-void

    :cond_1
    move v0, v1

    .line 486
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 46
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 542
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 547
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 524
    if-nez p0, :cond_1

    .line 525
    const/4 p0, 0x0

    .line 537
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 527
    .restart local p0
    :cond_1
    const-string/jumbo v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    const-string/jumbo p0, "he"

    goto :goto_0

    .line 530
    :cond_2
    const-string/jumbo v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    const-string/jumbo p0, "id"

    goto :goto_0

    .line 533
    :cond_3
    const-string/jumbo v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 503
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 504
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 505
    .local v1, locale:Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 509
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 511
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 505
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 11

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    sget-object v10, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 560
    :try_start_1
    sget-object v5, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 561
    .local v5, locale:Ljava/util/Locale;
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 564
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 565
    .local v8, version:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 566
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 568
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 581
    invoke-static {v4}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 584
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 594
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 595
    .local v7, model:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Web_Bool_UseTempModelName"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 596
    const-string v9, " SGH-N064"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    .end local v7           #model:Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 603
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 604
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    :cond_2
    iget-object v9, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, mobile:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, base:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 561
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #mobile:Ljava/lang/String;
    .end local v8           #version:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 559
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 572
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v8       #version:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 576
    :cond_4
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 589
    .restart local v4       #language:Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 597
    .restart local v7       #model:Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 598
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private declared-synchronized getCurrentUserAgentforBrowser()Ljava/lang/String;
    .locals 11

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    sget-object v10, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 618
    :try_start_1
    sget-object v5, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 619
    .local v5, locale:Ljava/util/Locale;
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 622
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 623
    .local v8, version:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 624
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 632
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 635
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 644
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 645
    .local v7, model:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 646
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    .end local v7           #model:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 652
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 653
    const-string v9, " 4G Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :cond_2
    iget-object v9, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 658
    .local v6, mobile:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, base:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 619
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #mobile:Ljava/lang/String;
    .end local v8           #version:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 627
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v8       #version:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 640
    .restart local v4       #language:Ljava/lang/String;
    :cond_4
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 2482
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 2487
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2484
    .restart local p1
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 2485
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 2493
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 2494
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2497
    :cond_0
    monitor-exit p0

    return-void

    .line 2493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1563
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1564
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1572
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized EnableTextReadability(Z)V
    .locals 1
    .parameter "tr"

    .prologue
    .line 2335
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mTextReadability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2336
    monitor-exit p0

    return-void

    .line 2335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDoubleTapBlockZoom()Z
    .locals 1

    .prologue
    .line 2250
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableDoubleTapBlockZoom:Z

    return v0
.end method

.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 2221
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2082
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2083
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2084
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2085
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 2086
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 2088
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 2088
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2082
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAdvancedCopyPasteFeature()Z
    .locals 1

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 2310
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 2327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1533
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1558
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getBypassQueueTouch()Z
    .locals 1

    .prologue
    .line 2428
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBypassQueueTouch:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 2147
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1834
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1826
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1475
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1454
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1978
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public declared-synchronized getDisableSelection()Z
    .locals 1

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDisableSelection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1817
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 2351
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    return v0
.end method

.method public getEditableSupport()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    return v0
.end method

.method public declared-synchronized getEmailDefaultViewPortWidth()I
    .locals 1

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mEmailDefaultViewPortWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableMagnifier()Z
    .locals 1

    .prologue
    .line 1076
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableMagnifier:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnablePerformanceTest()Z
    .locals 1

    .prologue
    .line 2260
    sget-boolean v0, Landroid/webkit/WebSettings;->mEnableDoubleTapTest:Z

    return v0
.end method

.method public getEnableTockTock()Z
    .locals 1

    .prologue
    .line 2283
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableTockTock:Z

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1607
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1959
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1879
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 1412
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1433
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMotionFilter()I
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Landroid/webkit/WebSettings;->mMotionFilter:I

    return v0
.end method

.method public getMoveFilter()Z
    .locals 1

    .prologue
    .line 2440
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mMoveFilter:Z

    return v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 677
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getNotificationState()Landroid/webkit/WebSettings$NotificationState;
    .locals 1

    .prologue
    .line 1907
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mNotificationState:Landroid/webkit/WebSettings$NotificationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1897
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1889
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1931
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 2382
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1627
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 9

    .prologue
    .line 907
    monitor-enter p0

    const/4 v1, 0x0

    .line 908
    .local v1, closestSize:Landroid/webkit/WebSettings$TextSize;
    const v6, 0x7fffffff

    .line 909
    .local v6, smallestDelta:I
    :try_start_0
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    .local v0, arr$:[Landroid/webkit/WebSettings$TextSize;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 910
    .local v5, size:Landroid/webkit/WebSettings$TextSize;
    iget v7, p0, Landroid/webkit/WebSettings;->mTextSize:I

    iget v8, v5, Landroid/webkit/WebSettings$TextSize;->value:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 911
    .local v2, delta:I
    if-nez v2, :cond_0

    .line 919
    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :goto_1
    monitor-exit p0

    return-object v5

    .line 914
    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    .restart local v2       #delta:I
    .restart local v5       #size:Landroid/webkit/WebSettings$TextSize;
    :cond_0
    if-ge v2, v6, :cond_1

    .line 915
    move v6, v2

    .line 916
    move-object v1, v5

    .line 909
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 919
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_2
    if-eqz v1, :cond_3

    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    :goto_2
    move-object v5, v1

    goto :goto_1

    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    :cond_3
    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 907
    .end local v0           #arr$:[Landroid/webkit/WebSettings$TextSize;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 885
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseDefaultClipboard()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultClipboard:Z

    return v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1129
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getUseEmailViewPort()Z
    .locals 1

    .prologue
    .line 1213
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseEmailViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 2190
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 827
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1170
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, 0x1

    .line 1177
    :goto_0
    monitor-exit p0

    return v0

    .line 1172
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    const/4 v0, 0x2

    goto :goto_0

    .line 1174
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1175
    const/4 v0, 0x0

    goto :goto_0

    .line 1177
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2033
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 2036
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2052
    :goto_0
    monitor-exit p0

    return-object v2

    .line 2039
    :cond_1
    const/4 v1, 0x0

    .line 2040
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2041
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2042
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2043
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 2044
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 2045
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 2046
    const/4 v1, 0x1

    .line 2048
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2049
    if-eqz v1, :cond_3

    .line 2050
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 2052
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 2048
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2033
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getUserAgentStringforBrowser()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2057
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 2060
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2076
    :goto_0
    monitor-exit p0

    return-object v2

    .line 2063
    :cond_1
    const/4 v1, 0x0

    .line 2064
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2065
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2066
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2067
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 2068
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgentforBrowser()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 2069
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 2070
    const/4 v1, 0x1

    .line 2072
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2073
    if-eqz v1, :cond_3

    .line 2074
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 2076
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 2072
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2057
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getWebGLEnabled()Z
    .locals 1

    .prologue
    .line 2403
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWebGLEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultZoomChanged()Z
    .locals 3

    .prologue
    .line 972
    const/4 v0, 0x0

    .line 974
    .local v0, isDefaultZoomChanged:Z
    iget-object v1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    iget v1, v1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 975
    const/4 v0, 0x1

    .line 976
    :cond_0
    return v0
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 2093
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 2197
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 2478
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAdvancedCopyPasteFeature(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    if-eq v0, p1, :cond_0

    .line 1026
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    .line 1027
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :cond_0
    monitor-exit p0

    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 766
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 767
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 750
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 751
    return-void
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1731
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1732
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 1733
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    :cond_0
    monitor-exit p0

    return-void

    .line 1731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .parameter "appCacheMaxSize"

    .prologue
    .line 1756
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1757
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 1758
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    :cond_0
    monitor-exit p0

    return-void

    .line 1756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "appCachePath"

    .prologue
    .line 1745
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 1747
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    :cond_0
    monitor-exit p0

    return-void

    .line 1745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2299
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2300
    .local v0, autoFillEnabled:Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 2301
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 2302
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2304
    :cond_0
    monitor-exit p0

    return-void

    .line 2299
    .end local v0           #autoFillEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 2317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 2318
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    .line 2319
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2321
    :cond_0
    monitor-exit p0

    return-void

    .line 2317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1521
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1522
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 1523
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    :cond_0
    monitor-exit p0

    return-void

    .line 1521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1545
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1546
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 1547
    invoke-direct {p0}, Landroid/webkit/WebSettings;->verifyNetworkAccess()V

    .line 1548
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    :cond_0
    monitor-exit p0

    return-void

    .line 1545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setBrowserApp(Z)V
    .locals 0
    .parameter "isBrowserApp"

    .prologue
    .line 2446
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mIsBrowserApp:Z

    .line 2447
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 2448
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 714
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 715
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 716
    return-void
.end method

.method public declared-synchronized setBypassQueueTouch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2418
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBypassQueueTouch:Z

    if-eq v0, p1, :cond_1

    .line 2419
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBypassQueueTouch:Z

    .line 2420
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBypassQueueTouch(Z)V

    .line 2423
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    :cond_1
    monitor-exit p0

    return-void

    .line 2418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2136
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 2137
    iput p1, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 2138
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 2140
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1361
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    iput-object p1, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 1363
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    :cond_0
    monitor-exit p0

    return-void

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1768
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1769
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 1770
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    :cond_0
    monitor-exit p0

    return-void

    .line 1768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1674
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1675
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 1677
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    :cond_0
    monitor-exit p0

    return-void

    .line 1674
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1463
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1464
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1465
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 1466
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    :cond_0
    monitor-exit p0

    return-void

    .line 1463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1442
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1443
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1444
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 1445
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    :cond_0
    monitor-exit p0

    return-void

    .line 1442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1967
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1968
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1969
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    :cond_0
    monitor-exit p0

    return-void

    .line 1967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 952
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 953
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 954
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->adjustDefaultZoomDensity(I)V

    .line 956
    :cond_0
    return-void
.end method

.method public declared-synchronized setDisableSelection(Z)Z
    .locals 1
    .parameter "disabled"

    .prologue
    .line 1083
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDisableSelection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 732
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 733
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 734
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1806
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1807
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 1808
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1810
    :cond_0
    monitor-exit p0

    return-void

    .line 1806
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 2355
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 2356
    sput p1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 2358
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    .line 2361
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 928
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 929
    iput p1, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 931
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->updateDoubleTapZoom(I)V

    .line 934
    :cond_0
    return-void
.end method

.method public setEditableSupport(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1101
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    .line 1102
    return-void
.end method

.method public declared-synchronized setEmailDefaultViewPortWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mEmailDefaultViewPortWidth:I

    if-eq v0, p1, :cond_0

    .line 1221
    iput p1, p0, Landroid/webkit/WebSettings;->mEmailDefaultViewPortWidth:I

    .line 1222
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :cond_0
    monitor-exit p0

    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableDoubleTapBlockZoom(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2241
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableDoubleTapBlockZoom:Z

    .line 2242
    return-void
.end method

.method public declared-synchronized setEnableMagnifier(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1068
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableMagnifier:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    monitor-exit p0

    return-void

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnablePerformanceTest(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2256
    sput-boolean p1, Landroid/webkit/WebSettings;->mEnableDoubleTapTest:Z

    .line 2257
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 798
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 799
    return-void
.end method

.method public setEnableTockTock(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2274
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableTockTock:Z

    .line 2275
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1380
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 1382
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :cond_0
    monitor-exit p0

    return-void

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFileSystemPath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1687
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mFileSystemPathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1688
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFileSystemPath:Ljava/lang/String;

    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mFileSystemPathHasBeenSet:Z

    .line 1690
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1692
    :cond_0
    monitor-exit p0

    return-void

    .line 1687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFilesystemEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1780
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mFilesystemEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1781
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mFilesystemEnabled:Z

    .line 1782
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    :cond_0
    monitor-exit p0

    return-void

    .line 1780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1304
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 1306
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    :cond_0
    monitor-exit p0

    return-void

    .line 1304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2230
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    monitor-exit p0

    return-void

    .line 2230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1719
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    iput-object p1, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1722
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    :cond_0
    monitor-exit p0

    return-void

    .line 1719
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1856
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1857
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 1858
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1860
    :cond_0
    monitor-exit p0

    return-void

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1596
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1597
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 1598
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    :cond_0
    monitor-exit p0

    return-void

    .line 1596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsContinousSpellCheck(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mIsSpellCheckEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2179
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mIsSpellCheckEnabled:Z

    .line 2180
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    :cond_0
    monitor-exit p0

    return-void

    .line 2178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1942
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    const/4 p1, 0x0

    .line 1946
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_1

    .line 1947
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1948
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    :cond_1
    monitor-exit p0

    return-void

    .line 1942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1580
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/BrowserPolicy;->getJavaScriptSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    const/4 p1, 0x0

    .line 1584
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1585
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 1586
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :cond_1
    monitor-exit p0

    return-void

    .line 1580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_0

    .line 1265
    iput-object p1, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1266
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :cond_0
    monitor-exit p0

    return-void

    .line 1264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 984
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 985
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .parameter "overview"

    .prologue
    .line 780
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 781
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1497
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1498
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 1499
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    :cond_0
    monitor-exit p0

    return-void

    .line 1497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 2171
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 2172
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 2173
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 2175
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1401
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 1402
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 1403
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_0
    monitor-exit p0

    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1421
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1422
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 1423
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 1424
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    :cond_0
    monitor-exit p0

    return-void

    .line 1421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMotionFilter(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1002
    iput p1, p0, Landroid/webkit/WebSettings;->mMotionFilter:I

    .line 1003
    return-void
.end method

.method public declared-synchronized setMoveFilter(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2432
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mMoveFilter:Z

    if-eq v0, p1, :cond_0

    .line 2433
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mMoveFilter:Z

    .line 2435
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2437
    :cond_0
    monitor-exit p0

    return-void

    .line 2432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 669
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2103
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 2104
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 2106
    :cond_0
    return-void
.end method

.method public declared-synchronized setNotificationState(Landroid/webkit/WebSettings$NotificationState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1915
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mNotificationState:Landroid/webkit/WebSettings$NotificationState;

    if-eq v0, p1, :cond_0

    .line 1916
    iput-object p1, p0, Landroid/webkit/WebSettings;->mNotificationState:Landroid/webkit/WebSettings$NotificationState;

    .line 1917
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    :cond_0
    monitor-exit p0

    return-void

    .line 1915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1484
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1485
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1486
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1487
    iput p1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 1488
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    :cond_2
    monitor-exit p0

    return-void

    .line 1484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1649
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1650
    iput-object p1, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1651
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    :cond_0
    monitor-exit p0

    return-void

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1638
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    monitor-exit p0

    return-void

    .line 1638
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1664
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2205
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2206
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 2210
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 2212
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    :cond_0
    monitor-exit p0

    return-void

    .line 2205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2373
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->contentInvalidateAll()V

    .line 2376
    :cond_0
    return-void
.end method

.method public setPropertyExt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2366
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mWebProperties:Landroid/webkit/WebProperties;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 2120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 2121
    iput-object p1, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 2122
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    :cond_0
    monitor-exit p0

    return-void

    .line 2120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRssSniffing(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1012
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportRssSniffing:Z

    if-eq v0, p1, :cond_0

    .line 1013
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportRssSniffing:Z

    .line 1014
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :cond_0
    monitor-exit p0

    return-void

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1323
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 1325
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :cond_0
    monitor-exit p0

    return-void

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 835
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    const/4 p1, 0x0

    .line 839
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 840
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 854
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 855
    return-void
.end method

.method public declared-synchronized setSelectionBgColor(J)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAdvanceSelectionBgColor:J

    .line 1044
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    monitor-exit p0

    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1342
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 1344
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    :cond_0
    monitor-exit p0

    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1616
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1617
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 1618
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    :cond_0
    monitor-exit p0

    return-void

    .line 1616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .parameter "shrink"

    .prologue
    .line 2158
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 2159
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 2160
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 2162
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1285
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    iput-object p1, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 1287
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    :cond_0
    monitor-exit p0

    return-void

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 1241
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 1242
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    :cond_0
    monitor-exit p0

    return-void

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .parameter "support"

    .prologue
    .line 699
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 700
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 701
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2288
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2289
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 2290
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2292
    :cond_0
    monitor-exit p0

    return-void

    .line 2288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    monitor-exit p0

    return-void

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 4
    .parameter "textZoom"

    .prologue
    .line 869
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I

    if-eq v0, p1, :cond_1

    .line 870
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    .line 871
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/WebSettings;->mTextSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 874
    :cond_0
    iput p1, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 875
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    :cond_1
    monitor-exit p0

    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTouchDebug(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2408
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mTouchDebug:Z

    if-eq v0, p1, :cond_0

    .line 2409
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mTouchDebug:Z

    .line 2411
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mTouchDebug:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    .line 2413
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    :cond_0
    monitor-exit p0

    return-void

    .line 2408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseDefaultClipboard(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1052
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseDefaultClipboard:Z

    .line 1053
    return-void
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1120
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUseEmailViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseEmailViewport:Z

    if-eq v0, p1, :cond_0

    .line 1203
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseEmailViewport:Z

    .line 1204
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1205
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    :cond_0
    monitor-exit p0

    return-void

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 817
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 818
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 1184
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 1185
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 1186
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    :cond_0
    monitor-exit p0

    return-void

    .line 1184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1141
    monitor-enter p0

    const/4 v0, 0x0

    .line 1142
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1143
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1146
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 1157
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1141
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1148
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1149
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1154
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 1986
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1987
    :cond_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1988
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1989
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1990
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1991
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1993
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1994
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1995
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 2000
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2001
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 2002
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2004
    :cond_2
    monitor-exit p0

    return-void

    .line 1993
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1986
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1997
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentStringforBrowser(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 2009
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 2010
    :cond_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2011
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2012
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2013
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 2014
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 2016
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2017
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgentforBrowser()Ljava/lang/String;

    move-result-object p1

    .line 2018
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 2023
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2024
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 2025
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2027
    :cond_2
    monitor-exit p0

    return-void

    .line 2016
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2009
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2020
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWOFFEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWOFFEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2345
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWOFFEnabled:Z

    .line 2346
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    :cond_0
    monitor-exit p0

    return-void

    .line 2344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebGLEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2392
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWebGLEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2393
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWebGLEnabled:Z

    .line 2394
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2396
    :cond_0
    monitor-exit p0

    return-void

    .line 2392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebNotificationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1704
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebnotificationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    iput-object p1, p0, Landroid/webkit/WebSettings;->mWebnotificationDatabasePath:Ljava/lang/String;

    .line 1707
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :cond_0
    monitor-exit p0

    return-void

    .line 1704
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebnotificationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1793
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWebnotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1794
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWebnotificationEnabled:Z

    .line 1795
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    :cond_0
    monitor-exit p0

    return-void

    .line 1793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1845
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1846
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 1847
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    :cond_0
    monitor-exit p0

    return-void

    .line 1845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1868
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1869
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 1870
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    :cond_0
    monitor-exit p0

    return-void

    .line 1868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method supportTouchOnly()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    .line 2457
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 2462
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2464
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 2465
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 2468
    :cond_0
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    .line 2469
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 2470
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$900(Landroid/webkit/WebSettings$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2471
    monitor-exit p0

    return-void

    .line 2457
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

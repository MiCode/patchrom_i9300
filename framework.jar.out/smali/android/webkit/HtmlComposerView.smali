.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$TBHandler;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkit/HtmlComposerView$MenuHandler;,
        Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x102002f

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x102002e

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field private bm_height:I

.field private bm_width:I

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field private isInComposingState:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lm_height:I

.field private lm_width:I

.field private lt_height:I

.field private lt_width:I

.field mAccumlationLength:I

.field private mAltKeyIsPressed:Z

.field mCurHtmlLength:I

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mLastTouchMode:I

.field public mMaxHtmlLength:I

.field mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field private mQwertyInput:Landroid/text/method/QwertyKeyListener;

.field public mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field mScreenHeight:I

.field mScreenWidth:I

.field private mShiftKeyIsPressed:Z

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field private mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mViewWidth:I

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkit/HtmlComposerView$TBHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rm_height:I

.field private rm_width:I

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public textSelected:Ljava/lang/String;

.field public texttoSpeech:Ljava/lang/String;

.field tm_height:I

.field tm_width:I

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 81
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 82
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 83
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 84
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 86
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 87
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 88
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 89
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 91
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 92
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 93
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 96
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 97
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 98
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 100
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 101
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 108
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 109
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 110
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 111
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 113
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 114
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 118
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 119
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 147
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 149
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 153
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 158
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 162
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 168
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 170
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 171
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 173
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 175
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 176
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 177
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 178
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 179
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 182
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 186
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 190
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 194
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 195
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 196
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 198
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 199
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 200
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 203
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 204
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 210
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 211
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 212
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 213
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 215
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 347
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 348
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 349
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 269
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 270
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 81
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 82
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 83
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 84
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 86
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 87
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 88
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 89
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 91
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 92
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 93
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 96
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 97
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 98
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 100
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 101
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 108
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 109
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 110
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 111
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 113
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 114
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 118
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 119
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 147
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 149
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 153
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 158
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 162
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 168
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 170
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 171
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 173
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 175
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 176
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 177
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 178
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 179
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 182
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 186
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 190
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 194
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 195
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 196
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 198
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 199
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 200
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 203
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 204
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 210
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 211
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 212
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 213
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 215
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 347
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 348
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 349
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 275
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 81
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 82
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 83
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 84
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 86
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 87
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 88
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 89
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 91
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 92
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 93
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 96
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 97
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 98
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 100
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 101
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 108
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 109
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 110
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 111
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 113
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 114
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 118
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 119
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 147
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 149
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 153
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 158
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 162
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 168
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 170
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 171
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 173
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 175
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 176
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 177
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 178
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 179
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 182
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 186
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 190
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 194
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 195
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 196
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 198
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 199
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 200
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 203
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 204
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 210
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 211
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 212
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 213
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 215
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 347
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 348
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 349
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 280
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 81
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 82
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 83
    const v1, 0x20000ff

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 84
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 85
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 86
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 87
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 88
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 89
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 91
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 92
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 93
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 94
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 95
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 96
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 97
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 98
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 100
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 101
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 102
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 103
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 104
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 105
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 108
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 109
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 110
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 111
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 113
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 114
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 118
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 119
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 147
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 149
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 150
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 153
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 158
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 162
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 168
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 170
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 171
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 173
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 175
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 176
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 177
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 178
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 179
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 182
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 186
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 190
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 194
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 195
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 196
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 198
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 199
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 200
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 201
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 203
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 204
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 205
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 206
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 210
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 211
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 212
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 213
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 215
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 347
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 348
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 349
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 285
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 293
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 294
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 295
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 298
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 299
    .local v6, metric:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 301
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 303
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->XFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 313
    :cond_0
    :goto_0
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 316
    const-string/jumbo v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 319
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v7, v0}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 320
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 321
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 322
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 323
    new-instance v0, Landroid/webkit/HtmlComposerView$TBHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$TBHandler;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$TBHandler;

    .line 324
    invoke-super {p0, p0}, Landroid/webkit/WebView;->isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V

    .line 325
    return-void

    .line 305
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 306
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 307
    :cond_2
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 308
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 309
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/webkit/HtmlComposerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 2797
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    const/4 v0, 0x1

    .line 2801
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 2807
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2808
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2810
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 2811
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 2812
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 2813
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2822
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 2823
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2827
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 2815
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 2816
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2818
    :cond_1
    if-eqz v4, :cond_2

    .line 2819
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2821
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 2825
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 2826
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 1705
    new-instance v0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 1708
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 1709
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1710
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 1712
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2832
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2835
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 2837
    .local v1, showIme:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2838
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2840
    :cond_0
    return-void

    .end local v1           #showIme:Z
    :cond_1
    move v1, v2

    .line 2835
    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 3190
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 3182
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 3194
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 3186
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 2843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2847
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2849
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2850
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2853
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 2855
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2871
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2872
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2873
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 2857
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2860
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 2861
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 2862
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2863
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2865
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10406c2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10406c3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2866
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "rect"

    .prologue
    const/4 v4, 0x1

    .line 2879
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2892
    :cond_0
    :goto_0
    return-void

    .line 2881
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 2882
    .local v0, paramArray:[Ljava/lang/Object;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2884
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 2885
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v3, 0x8

    iput v3, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 2886
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 2887
    iput-boolean v4, p0, Landroid/webkit/WebView;->isImageSelected:Z

    .line 2889
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2890
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21d

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 5
    .parameter "rect"
    .parameter "imageoutLinePath"
    .parameter "imagehandlesPath"

    .prologue
    const/4 v4, 0x1

    .line 2898
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2914
    :cond_0
    :goto_0
    return-void

    .line 2900
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 2901
    .local v0, paramArray:[Ljava/lang/Object;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2903
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 2904
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v3, 0x8

    iput v3, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 2905
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 2906
    iput-boolean v4, p0, Landroid/webkit/WebView;->isImageSelected:Z

    .line 2908
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 2909
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 2911
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2912
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21d

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkit/HtmlComposerView;
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3566
    const/4 v0, 0x0

    .line 3567
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 3568
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3569
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3570
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3571
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3572
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3574
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3575
    return-void
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3408
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3409
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3411
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3412
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3413
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3414
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3416
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3442
    :cond_0
    :goto_0
    return-void

    .line 3418
    :cond_1
    if-gez v2, :cond_2

    .line 3419
    const/4 v4, -0x1

    .line 3420
    :cond_2
    if-gez v3, :cond_3

    .line 3421
    const/4 v5, -0x1

    .line 3422
    :cond_3
    if-eq v4, v5, :cond_0

    .line 3425
    if-ge v0, v1, :cond_4

    .line 3426
    mul-int v3, v0, v5

    .line 3433
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3434
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3437
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3438
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3439
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3440
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3441
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3429
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3603
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 3604
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 3605
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3606
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3607
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3608
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3609
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3610
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3612
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3445
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3446
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3448
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3449
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3450
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3451
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3453
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3479
    :cond_0
    :goto_0
    return-void

    .line 3455
    :cond_1
    if-gez v2, :cond_2

    .line 3456
    const/4 v4, -0x1

    .line 3457
    :cond_2
    if-gez v3, :cond_3

    .line 3458
    const/4 v5, -0x1

    .line 3459
    :cond_3
    if-ne v4, v5, :cond_0

    .line 3462
    if-ge v0, v1, :cond_4

    .line 3463
    mul-int v3, v0, v5

    .line 3470
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3471
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3474
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3475
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3476
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3477
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3478
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3466
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2922
    packed-switch p1, :pswitch_data_0

    .line 2957
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2960
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imm active  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 2962
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2963
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 2964
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 2966
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2968
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 2969
    return-void

    .line 2924
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_0

    .line 2925
    const-string v1, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2927
    :cond_0
    const-string v1, "MoveLeft"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2932
    :pswitch_1
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_1

    .line 2933
    const-string v1, "MoveRightAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2935
    :cond_1
    const-string v1, "MoveRight"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2940
    :pswitch_2
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_2

    .line 2941
    const-string v1, "MoveUpAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2943
    :cond_2
    const-string v1, "MoveUp"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2948
    :pswitch_3
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_3

    .line 2949
    const-string v1, "MoveDownAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2951
    :cond_3
    const-string v1, "MoveDown"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2922
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3484
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3485
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3487
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3488
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3489
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3490
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3492
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3520
    :cond_0
    :goto_0
    return-void

    .line 3494
    :cond_1
    if-gez v2, :cond_2

    .line 3495
    const/4 v4, -0x1

    .line 3496
    :cond_2
    if-gez v3, :cond_3

    .line 3497
    const/4 v5, -0x1

    .line 3498
    :cond_3
    if-ne v4, v5, :cond_0

    .line 3501
    if-ge v0, v1, :cond_4

    .line 3502
    mul-int v3, v0, v5

    .line 3509
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3510
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3514
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3515
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3516
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3517
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3518
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3505
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3591
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 3592
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 3593
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3594
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3595
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3596
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3597
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3598
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3600
    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3525
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3526
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3528
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3529
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3530
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3531
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3533
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3561
    :cond_0
    :goto_0
    return-void

    .line 3535
    :cond_1
    if-gez v2, :cond_2

    .line 3536
    const/4 v4, -0x1

    .line 3537
    :cond_2
    if-gez v3, :cond_3

    .line 3538
    const/4 v5, -0x1

    .line 3539
    :cond_3
    if-eq v4, v5, :cond_0

    .line 3542
    if-ge v0, v1, :cond_4

    .line 3543
    mul-int v3, v0, v5

    .line 3550
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3551
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3555
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3556
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3557
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3558
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3559
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3546
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3578
    const/4 v0, 0x0

    .line 3579
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 3580
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3581
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3582
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3583
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3584
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3587
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3588
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 3199
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3201
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3207
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3208
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3209
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 3210
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3212
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3213
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3214
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3216
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3219
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3220
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3221
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3222
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 3223
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3225
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3226
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3227
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3229
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3232
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3233
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3234
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3235
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 3236
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3237
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3238
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3239
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3241
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3244
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3245
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3246
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3247
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 3249
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3253
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3254
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3255
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3256
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 3257
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3258
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3259
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3260
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3262
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3265
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3266
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3267
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3268
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 3269
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3271
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3272
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3273
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3275
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3278
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3279
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3280
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3281
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 3282
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3283
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3284
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3285
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3287
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3290
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3291
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3292
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3293
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 3294
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3295
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3296
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3297
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3298
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3301
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3302
    return-void

    .line 3204
    :cond_8
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 3305
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 3307
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 3308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 3311
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_1

    .line 3313
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 3314
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3315
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3318
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_2

    .line 3320
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 3321
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3322
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3325
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_3

    .line 3327
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 3328
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3329
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3332
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_4

    .line 3334
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 3335
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3336
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3339
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_5

    .line 3341
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 3342
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3343
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3346
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_6

    .line 3348
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 3349
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3350
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3353
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_7

    .line 3355
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 3356
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3357
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3360
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_9

    .line 3361
    :cond_8
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3363
    :cond_9
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_b

    .line 3364
    :cond_a
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 3365
    :cond_b
    return-void
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3368
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3369
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3370
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 3372
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_1

    .line 3375
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 3376
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 3377
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 3379
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 3380
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 3381
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 3382
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 3384
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3385
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3386
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3387
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3389
    invoke-direct {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3390
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3393
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3394
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3397
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3398
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3399
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3400
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3401
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3404
    :cond_1
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 1715
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1719
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 1721
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 2972
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2973
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2974
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2976
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2979
    if-eqz p1, :cond_0

    .line 2980
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2981
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2983
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 2986
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2987
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2988
    :cond_0
    return-void
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3767
    move v0, p1

    .line 3768
    .local v0, positionX:I
    move v1, p2

    .line 3770
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3772
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3773
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 3778
    :goto_0
    return v3

    .line 3776
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3778
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInsertionAllowed(I)Z
    .locals 5
    .parameter "insertionLength"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2991
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v3, :cond_1

    .line 3002
    :cond_0
    :goto_0
    return v1

    .line 2993
    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x3

    .line 2994
    .local v0, avoidLength:I
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 2996
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-lt v3, v0, :cond_0

    .line 3000
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 3001
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 3002
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v3, p1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3785
    move v0, p1

    .line 3786
    .local v0, positionX:I
    move v1, p2

    .line 3788
    .local v1, positionY:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3790
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3791
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    :cond_0
    const/4 v2, 0x1

    .line 3802
    :goto_0
    return v2

    .line 3797
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 3798
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3695
    move v0, p1

    .line 3696
    .local v0, positionX:I
    move v1, p2

    .line 3698
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3700
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3702
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3703
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    :cond_0
    const/4 v3, 0x1

    .line 3715
    :goto_0
    return v3

    .line 3709
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3711
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3712
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3736
    move v0, p1

    .line 3737
    .local v0, positionX:I
    move v1, p2

    .line 3739
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3740
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3742
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 3747
    :goto_0
    return v3

    .line 3745
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3747
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3667
    move v0, p1

    .line 3668
    .local v0, positionX:I
    move v1, p2

    .line 3670
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3672
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3674
    const-string v3, "HtmlComposerView"

    const-string v4, "Right top and outline inteersecting so disable outlineRect region as user intention is to resize not move"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3678
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3679
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_1
    const/4 v3, 0x1

    .line 3691
    :goto_0
    return v3

    .line 3685
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3687
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3688
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3751
    move v0, p1

    .line 3752
    .local v0, positionX:I
    move v1, p2

    .line 3754
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3756
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3758
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 3763
    :goto_0
    return v3

    .line 3761
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3763
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3644
    move v0, p1

    .line 3645
    .local v0, positionX:I
    move v1, p2

    .line 3647
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3648
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3650
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3651
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :cond_0
    const/4 v3, 0x1

    .line 3663
    :goto_0
    return v3

    .line 3657
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3659
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3660
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3720
    move v0, p1

    .line 3721
    .local v0, positionX:I
    move v1, p2

    .line 3723
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3725
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3727
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 3732
    :goto_0
    return v3

    .line 3730
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3732
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3620
    move v0, p1

    .line 3621
    .local v0, positionX:I
    move v1, p2

    .line 3623
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3625
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3627
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3628
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    :cond_0
    const/4 v3, 0x1

    .line 3640
    :goto_0
    return v3

    .line 3634
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3636
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3637
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 3808
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3809
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3810
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 3813
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3814
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3815
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3817
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3818
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3820
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3821
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3823
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3824
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3826
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3827
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3829
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3830
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3832
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3833
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3835
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3836
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3840
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 3007
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3009
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-ne v1, v3, :cond_0

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 3010
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 3011
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3013
    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3169
    iget-boolean v1, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    .line 3171
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3172
    .local v0, selectedImageRect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    .line 3173
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 3177
    .end local v0           #selectedImageRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 3016
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3024
    :cond_0
    :goto_0
    return-void

    .line 3018
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3020
    if-eqz p1, :cond_2

    .line 3021
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 3023
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 3845
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftTopHandle()V

    .line 3846
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightTopHandle()V

    .line 3847
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftBottomHandle()V

    .line 3848
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightBottomHandle()V

    .line 3850
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateTopMiddleHandle()V

    .line 3851
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 3852
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 3853
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightMiddleHandle()V

    .line 3855
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 3965
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3966
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3967
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3968
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3969
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3974
    :goto_0
    return-void

    .line 3972
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3034
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 3035
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 3037
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 3052
    :cond_0
    :goto_0
    return-void

    .line 3040
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 3041
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 3042
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 3043
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 3044
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 3045
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 3047
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3050
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3051
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 3892
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3894
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3895
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3896
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3897
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3902
    :goto_0
    return-void

    .line 3900
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 3962
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 3963
    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 5

    .prologue
    .line 3887
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 3888
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v3, 0x1

    .line 3905
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 3906
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3907
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3909
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 3910
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3911
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3913
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 3914
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3915
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3917
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 3918
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3919
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3922
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    .line 3923
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3924
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3926
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    .line 3927
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3928
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3930
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    .line 3931
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3932
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3934
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    .line 3935
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3936
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3939
    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 8

    .prologue
    const-wide v4, 0x3fc3333333333333L

    .line 3859
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 3860
    .local v1, localImagWidth:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 3861
    .local v0, localImagHeight:I
    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 3863
    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 3864
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3865
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3868
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3870
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3872
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3874
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3876
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3878
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3880
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3882
    return-void
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 3942
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3943
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3944
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3945
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3946
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3951
    :goto_0
    return-void

    .line 3949
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 3976
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 3977
    return-void
.end method

.method private updateRightTopHandle()V
    .locals 5

    .prologue
    .line 3954
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 3955
    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 3979
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3980
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3981
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3982
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3983
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3988
    :goto_0
    return-void

    .line 3986
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 3027
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3031
    :cond_0
    :goto_0
    return-void

    .line 3029
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3030
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 2062
    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 2064
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2067
    :cond_0
    return-void
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 2535
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .parameter "_visible"

    .prologue
    .line 2705
    iput-boolean p1, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 2706
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .parameter "isClear"

    .prologue
    const/4 v1, 0x1

    .line 2783
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 2784
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_2

    .line 2785
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 2790
    :cond_1
    :goto_0
    return-void

    .line 2787
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 1895
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1896
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1900
    const/4 v0, 0x1

    .line 1903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 1907
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1908
    const/4 v0, 0x1

    .line 1911
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 1915
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1916
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1917
    const/4 v0, 0x1

    .line 1921
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1925
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1940
    :cond_0
    :goto_0
    return v3

    .line 1927
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1928
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1929
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 1930
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1931
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1939
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1940
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1935
    :catch_0
    move-exception v1

    .line 1936
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1939
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1944
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return v3

    .line 1946
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1947
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1948
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 1949
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1950
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1958
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1960
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1954
    :catch_0
    move-exception v1

    .line 1955
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1958
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1343
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1345
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1346
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 2
    .parameter "fontColor"

    .prologue
    .line 1349
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1352
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1353
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1355
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 1359
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1360
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1362
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1363
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1373
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1374
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1376
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1377
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1366
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1367
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1369
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1370
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 4

    .prologue
    .line 1964
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 1979
    :goto_0
    return v2

    .line 1966
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1967
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 1968
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1969
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1977
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1979
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1977
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 1983
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 1985
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1988
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1990
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 1992
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 1994
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1995
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 1998
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2000
    :cond_0
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 2003
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    if-lez p2, :cond_2

    .line 2006
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2008
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 2011
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 2012
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1380
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1384
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 2023
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2024
    .local v0, cursurRect:Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 2026
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2028
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 2031
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2038
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2046
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 2047
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 2048
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 2051
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2052
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2055
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2056
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2057
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 2058
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2059
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 503
    const/16 v19, 0x0

    .line 504
    .local v19, retVal:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v16, 0x1

    .line 505
    .local v16, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 506
    .local v17, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 508
    .local v15, MetaState:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 509
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 513
    if-eqz v16, :cond_6

    .line 514
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 519
    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 521
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 522
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 531
    :cond_4
    :goto_2
    const/16 v19, 0x1

    .line 755
    .end local v19           #retVal:Z
    :goto_3
    return v19

    .line 504
    .end local v15           #MetaState:I
    .end local v16           #down:Z
    .end local v17           #keyCode:I
    .restart local v19       #retVal:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .line 516
    .restart local v15       #MetaState:I
    .restart local v16       #down:Z
    .restart local v17       #keyCode:I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 526
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 528
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_2

    .line 532
    :cond_8
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_9

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 534
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    .line 535
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 544
    :cond_b
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 539
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 541
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 545
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_13

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_e

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_13

    .line 546
    :cond_e
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    .line 547
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_10

    .line 548
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 564
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 565
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 551
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 552
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 554
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 555
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_12

    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorEnd()V

    goto :goto_5

    .line 559
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 560
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 566
    :cond_13
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_14

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_17

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 568
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 569
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 571
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageUp()V

    .line 572
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 573
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 582
    :cond_15
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 576
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 578
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 579
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_6

    .line 583
    :cond_17
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_18

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_1b

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 585
    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    .line 586
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1a

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageDown()V

    .line 589
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 590
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 599
    :cond_19
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 593
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 595
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 596
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_7

    .line 602
    :cond_1b
    const/high16 v4, 0x20

    if-eq v15, v4, :cond_21

    .line 603
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 608
    :cond_1c
    if-eqz v16, :cond_21

    .line 609
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    .line 610
    const/16 v17, 0x14

    .line 611
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 612
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 613
    :cond_1d
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 614
    const/16 v17, 0x15

    .line 615
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 616
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 617
    :cond_1e
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_1f

    .line 618
    const/16 v17, 0x16

    .line 619
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 620
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 621
    :cond_1f
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_20

    .line 622
    const/16 v17, 0x13

    .line 623
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 624
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 625
    :cond_20
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 626
    const/4 v2, 0x0

    .line 628
    .local v2, newKeyEvent:Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 638
    .restart local v2       #newKeyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 644
    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    :cond_21
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_29

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_29

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 646
    .local v20, selctionAtBoundry:I
    if-nez v20, :cond_23

    .line 647
    if-eqz v16, :cond_22

    .line 648
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 649
    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 651
    :cond_23
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_26

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_24

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_26

    .line 652
    :cond_24
    if-eqz v16, :cond_25

    .line 653
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 654
    :cond_25
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 656
    :cond_26
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_35

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_27

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    .line 657
    :cond_27
    if-eqz v16, :cond_28

    .line 658
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 659
    :cond_28
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 662
    .end local v20           #selctionAtBoundry:I
    :cond_29
    const/16 v4, 0x3e

    move/from16 v0, v17

    if-ne v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_2b

    .line 663
    if-eqz v16, :cond_2a

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 665
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 669
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 671
    :cond_2a
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 673
    :cond_2b
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_2e

    .line 674
    if-eqz v16, :cond_2d

    .line 675
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 677
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 679
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 680
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 682
    :cond_2c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 684
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 686
    :cond_2e
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_2f

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_31

    .line 687
    :cond_2f
    if-eqz v16, :cond_30

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 689
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 693
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 695
    :cond_30
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 697
    :cond_31
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_32

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_33

    .line 698
    :cond_32
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 700
    :cond_33
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v16, :cond_35

    .line 704
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sparse-switch v17, :sswitch_data_0

    .line 748
    :cond_35
    if-eqz v19, :cond_36

    .line 749
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 752
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 708
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 709
    const/16 v18, 0x0

    .line 710
    .local v18, result:Z
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 711
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 712
    goto/16 :goto_3

    .line 717
    .end local v18           #result:Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 718
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 723
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 724
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 729
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 730
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 735
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 736
    const v4, 0x102002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 741
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 742
    const v4, 0x102002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 755
    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 760
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    const/4 v0, 0x1

    return v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2070
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2072
    :cond_0
    return-void
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2095
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2096
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2097
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "value"

    .prologue
    .line 2075
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2077
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2078
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2080
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10406c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10406c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2092
    .end local v0           #length:I
    :goto_0
    return-void

    .line 2084
    .restart local v0       #length:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v1, :cond_1

    .line 2087
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2091
    .end local v0           #length:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 2

    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1389
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1391
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1392
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1393
    return-void
.end method

.method public executeOutdent()V
    .locals 2

    .prologue
    .line 1396
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1397
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1399
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1400
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1401
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2100
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return-object v2

    .line 2102
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2103
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2104
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2105
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2113
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2115
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2113
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 2119
    iget-boolean v0, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 2124
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2125
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2126
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2132
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2133
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2132
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 4

    .prologue
    .line 2138
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2139
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2140
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2146
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2147
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2146
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 2152
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2156
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 2157
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 2161
    :goto_0
    return-object v1

    .line 2158
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2159
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2161
    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2165
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 2169
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 2170
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return-object v0

    .line 2172
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 2173
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2174
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2175
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2176
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2182
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return-object v3

    .line 2184
    :cond_1
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 2185
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2186
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 2187
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2188
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2191
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2196
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2198
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHTMLMarkupData;

    goto :goto_0

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2196
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2202
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return-object v2

    .line 2204
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2205
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2206
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2207
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2215
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2217
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2215
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2278
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 2295
    :goto_0
    return-object v3

    .line 2280
    :cond_1
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2281
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 2282
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2283
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2291
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2293
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 2295
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 2287
    .end local v1           #pnt:Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 2288
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2291
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 2299
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShowSingleCursorHandlerState()Z
    .locals 1

    .prologue
    .line 2303
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2256
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2270
    :cond_0
    :goto_0
    return v2

    .line 2258
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2259
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2260
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2261
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2268
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2270
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2268
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2225
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 2226
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 2227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2228
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 2229
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 2230
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    .end local v0           #chrVal:I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v3, 0x0

    .line 2236
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2252
    :cond_0
    :goto_0
    return-object v3

    .line 2238
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 2239
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2240
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 2241
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2242
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2250
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2252
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2250
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public hideSingleCursorHandler()V
    .locals 1

    .prologue
    .line 2308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 2309
    iget-object v0, p0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2310
    iget-object v0, p0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2311
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 2312
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 2315
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 2319
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2321
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2323
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "context"
    .parameter "imagetRect1"

    .prologue
    const/high16 v10, 0x4000

    .line 3063
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 3064
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 3066
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 3067
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 3068
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 3069
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 3070
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 3071
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 3072
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 3074
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    .line 3075
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    .line 3076
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v9, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 3077
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v9, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 3078
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 3079
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 3082
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lt_height:I

    .line 3083
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lt_width:I

    .line 3086
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rt_height:I

    .line 3087
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rt_width:I

    .line 3089
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    .line 3090
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    .line 3093
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 3094
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 3096
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 3097
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 3099
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rm_height:I

    .line 3100
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rm_width:I

    .line 3103
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lm_height:I

    .line 3104
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lm_width:I

    .line 3106
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    .line 3107
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    .line 3108
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3110
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 3112
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3113
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3114
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 3115
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 3116
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 3117
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 3118
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 3120
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 3121
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 3122
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 3123
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 3125
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3127
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3128
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mTouchSlop:I

    .line 3130
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3132
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 3133
    .local v2, wms:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3134
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 3135
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 3136
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .locals 2
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 2326
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_1

    .line 2327
    const-string v0, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    :cond_0
    :goto_0
    const-string v0, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2335
    return-void

    .line 2329
    :cond_1
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_0

    .line 2330
    const-string v0, "MoveToEndOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 2355
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2356
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2357
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2364
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2367
    const-string/jumbo v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2368
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2369
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 2338
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2339
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2340
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2346
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2349
    const-string/jumbo v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2350
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2351
    return-void
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 1404
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1405
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1407
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1408
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;
    .locals 5
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/WebView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .line 2373
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2394
    :goto_0
    return-object v2

    .line 2375
    :cond_1
    new-instance v1, Landroid/webkit/WebViewCore$EditableParams;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$EditableParams;-><init>()V

    .line 2376
    .local v1, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 2377
    iput p2, v1, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    .line 2378
    iput-boolean p3, v1, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    .line 2379
    iput-object p4, v1, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 2381
    monitor-enter v1

    .line 2382
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2383
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2392
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2394
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    iget v3, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 2385
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    monitor-exit v1

    goto :goto_0

    .line 2392
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2389
    :catch_0
    move-exception v0

    .line 2390
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 1411
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1412
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1414
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1415
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 2399
    const/4 v1, 0x0

    .local v1, beforeStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2401
    .local v0, aftStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2405
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2408
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2410
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2413
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    .line 2415
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2417
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2427
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 2428
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_5
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2467
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2468
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2469
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    .line 2470
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2471
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2472
    const/4 v2, 0x0

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2473
    :cond_7
    :goto_2
    return-void

    .line 2421
    :cond_8
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2422
    const-string v0, "Images inserted"

    goto :goto_0

    .line 2424
    :cond_9
    const-string v0, "Images"

    goto :goto_0

    .line 2433
    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    .line 2435
    const-string v0, ""

    .line 2436
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 2438
    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    .line 2440
    const-string v0, ""

    .line 2441
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2443
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 2446
    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    .line 2448
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2449
    const-string v1, ""

    goto :goto_1

    .line 2451
    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    .line 2454
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2456
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 2457
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :cond_e
    const-string v1, ""

    goto :goto_1
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2476
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2492
    :cond_0
    :goto_0
    return v3

    .line 2478
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2479
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2480
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2481
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2482
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2485
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2490
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2492
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2486
    :catch_0
    move-exception v1

    .line 2487
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2490
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 2500
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2501
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 2505
    sget-object v0, Landroid/webkit/HtmlComposerView;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HtmlComposerView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 2506
    const/4 v0, 0x1

    .line 2509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1288
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    packed-switch p1, :pswitch_data_0

    .line 1336
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1292
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1294
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1298
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1300
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1302
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1303
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1307
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1308
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 1309
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1310
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1313
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 1314
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 1316
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1322
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 1323
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1327
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1329
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    .line 2513
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 2517
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2519
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 2523
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2524
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2526
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 2529
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2530
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2532
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 2539
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2540
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2542
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 2545
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2546
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2548
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 2551
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2552
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2554
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 2557
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2558
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2560
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    .prologue
    .line 2587
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2588
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2590
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    .prologue
    .line 2593
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2594
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2596
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 2563
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2564
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2566
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 2569
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2570
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2572
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 2575
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2576
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2578
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 2581
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2582
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2584
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuItem(I)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 359
    iput-boolean v3, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 361
    iget-boolean v4, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v2, v4, :cond_0

    .line 362
    const-string v4, "HtmlComposerView"

    const-string/jumbo v5, "onContextMenuItem To hide Cursor handler"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 366
    :cond_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 368
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 498
    :cond_1
    :goto_0
    return v2

    .line 372
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 373
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 375
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    goto :goto_0

    .line 380
    :sswitch_1
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 381
    .local v0, cursurRect:Landroid/graphics/Rect;
    if-nez v0, :cond_2

    move v2, v3

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 384
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 386
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    goto :goto_0

    .line 390
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 392
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 394
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 395
    const v3, 0x1020020

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 396
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 398
    iget-boolean v3, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v3, :cond_1

    .line 400
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 402
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 403
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 404
    iput-object v6, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 409
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 411
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 412
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 414
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 415
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 416
    const v3, 0x1020408

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 418
    iget-boolean v3, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v3, :cond_1

    .line 420
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 422
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 423
    iput-object v6, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 424
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto/16 :goto_0

    .line 430
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 431
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 432
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 433
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 440
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 443
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 445
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 447
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    goto/16 :goto_0

    .line 452
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 454
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x10406c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x10406c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 457
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 459
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 462
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 464
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 465
    const v3, 0x1020022

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    goto/16 :goto_0

    .line 474
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 475
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    .line 476
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 480
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 481
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 482
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 486
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 487
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 491
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 492
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_0

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x102002e -> :sswitch_8
        0x102002f -> :sswitch_9
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6
    .parameter "outAttrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 772
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v5, v1, :cond_0

    .line 776
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 778
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 781
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    if-ne v1, v4, :cond_2

    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    if-nez v1, :cond_2

    .line 783
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 787
    :cond_2
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 790
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 797
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 798
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 800
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 801
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 803
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 806
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 812
    iget-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 813
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 815
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 818
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 819
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 2604
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 2605
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 2606
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2607
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2608
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2615
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 824
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 826
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 827
    if-nez p1, :cond_3

    .line 828
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 829
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v4, v0, :cond_0

    .line 830
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocusChanged To hide Cursor handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 832
    iput-boolean v3, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 834
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 836
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 854
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 855
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 857
    iget-boolean v0, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_2

    .line 858
    iput-boolean v3, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 859
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearActionModes()V

    .line 861
    :cond_2
    return-void

    .line 838
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 839
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 841
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    if-eqz v0, :cond_4

    .line 842
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 846
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 876
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 877
    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "htmlcompor onKeyDown "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 887
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 893
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 900
    const/16 v5, 0x3e

    if-ne p1, v5, :cond_2

    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-ne v5, v4, :cond_2

    .line 902
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 905
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 922
    :goto_0
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 923
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 925
    const/4 v1, 0x0

    .line 927
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v8}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 931
    .local v2, spannableChar:[C
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 933
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 934
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 935
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 936
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 938
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v5, :cond_3

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v5, :cond_3

    .line 940
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 943
    :cond_3
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lt v5, v4, :cond_4

    .line 945
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
    :cond_4
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p0, v6, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 950
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v5, v6

    .line 952
    .local v0, diff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 954
    if-lez v0, :cond_8

    .line 956
    if-eqz v1, :cond_7

    .line 958
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 960
    const-string v5, ""

    invoke-virtual {p0, v5, v4}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 961
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 976
    :goto_1
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 977
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 986
    :cond_5
    :goto_2
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 992
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :goto_3
    return v4

    .line 908
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    goto :goto_3

    .line 913
    :sswitch_1
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    .line 917
    :sswitch_2
    const-string v5, "DeleteForward"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 966
    .restart local v0       #diff:I
    .restart local v1       #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .restart local v2       #spannableChar:[C
    .restart local v3       #spannableString:Ljava/lang/String;
    :cond_6
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 972
    :cond_7
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 978
    :cond_8
    if-gez v0, :cond_5

    .line 980
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 982
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 983
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    goto :goto_2

    .line 992
    .end local v0           #diff:I
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x70 -> :sswitch_2
        0xdd -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 866
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 870
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 997
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1001
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1004
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1009
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1010
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "htmlcompor onKeyUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 1014
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1028
    :cond_2
    :goto_0
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v0, :cond_3

    .line 1030
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1033
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v0, :cond_6

    .line 1035
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1036
    const/4 v0, 0x1

    .line 1039
    :goto_1
    return v0

    .line 1016
    :cond_4
    const/16 v0, 0x43

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v0, :cond_2

    .line 1018
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1020
    const-string/jumbo v0, "image"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1021
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1024
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 1039
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onRecieveWebviewTouchUp()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 2619
    iget-boolean v1, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-nez v1, :cond_0

    .line 2620
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2623
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imm active  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2626
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 2627
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2628
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2631
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 2632
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 1044
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1045
    .local v13, ret:Z
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContentX()I

    move-result v3

    .line 1046
    .local v3, contentX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContentY()I

    move-result v4

    .line 1048
    .local v4, contentY:I
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MotionEvent.ACTION_DOWN  html compopser"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1180
    :cond_0
    :goto_0
    return v13

    .line 1054
    :pswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 1055
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1057
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 1058
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1060
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->originalWidth:I

    .line 1061
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->originalHeight:I

    goto :goto_0

    .line 1068
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 1069
    .local v7, movingContentX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v8, v0

    .line 1070
    .local v8, movingContentY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1072
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Landroid/webkit/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto :goto_0

    .line 1080
    .end local v7           #movingContentX:I
    .end local v8           #movingContentY:I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1081
    const-string v17, "HtmlComposerView"

    const-string/jumbo v18, "making selection set to true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isSelectionset:Z

    .line 1083
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 1084
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1085
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 1086
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1089
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v12

    .line 1091
    .local v12, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isImageSelected:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1096
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .line 1099
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1102
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1103
    .local v10, rawX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 1104
    .local v11, rawY:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1105
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1109
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v6

    .line 1110
    .local v6, finalWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v5

    .line 1112
    .local v5, finalHeight:I
    const/4 v14, 0x0

    .line 1113
    .local v14, sameImageFlag:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 1115
    .local v9, oldImageRect:Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1116
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1118
    const/4 v14, 0x1

    .line 1122
    :cond_2
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_6

    .line 1125
    :cond_3
    const-string v17, "HtmlComposerView"

    const-string v18, "doResizeImage called - Image is going to resize "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v16

    .line 1127
    .local v16, selectedImgRect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1128
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/webkit/HtmlComposerView;->doResizeImage(II)V

    .line 1129
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 1130
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1132
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isImageSelected:Z

    .line 1163
    .end local v16           #selectedImgRect:Landroid/graphics/Rect;
    :cond_5
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 1164
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewTouchUp()V

    goto/16 :goto_0

    .line 1135
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->imageCanbeResized:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->imageCanbeMoved:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1138
    const-string v17, "InsertHTML"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1141
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->imageCanbeMoved:Z

    .line 1142
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isImageSelected:Z

    .line 1143
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 1144
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isTouchedImage:Z

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    goto :goto_1

    .line 1149
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v3, v0, :cond_8

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v3, v0, :cond_8

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_8

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v4, v0, :cond_9

    .line 1151
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1152
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1153
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    goto/16 :goto_1

    .line 1156
    :cond_9
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    if-nez v14, :cond_5

    .line 1158
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v15

    .line 1159
    .local v15, selectedImageRect:Landroid/graphics/Rect;
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 1160
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1170
    .end local v5           #finalHeight:I
    .end local v6           #finalWidth:I
    .end local v9           #oldImageRect:Landroid/graphics/Rect;
    .end local v10           #rawX:I
    .end local v11           #rawY:I
    .end local v12           #rect:Landroid/graphics/Rect;
    .end local v14           #sameImageFlag:Z
    .end local v15           #selectedImageRect:Landroid/graphics/Rect;
    :cond_a
    const-string v17, "HtmlComposerView"

    const-string/jumbo v18, "isContextMenuVisible == true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIsLongPressed:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1172
    const-string v17, "HtmlComposerView"

    const-string/jumbo v18, "mIsLongPressed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1174
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mIsLongPressed:Z

    goto/16 :goto_0

    .line 1052
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1185
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 1187
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1188
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1190
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1191
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1193
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1194
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1197
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    .line 1199
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1201
    :cond_1
    if-nez p1, :cond_5

    .line 1203
    iget-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v6, v2, :cond_2

    .line 1204
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onWindowFocusChanged To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 1206
    iput-boolean v7, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 1209
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    .line 1211
    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1212
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1214
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_4
    :goto_0
    return-void

    .line 1220
    :cond_5
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    .line 1222
    :cond_6
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v2, :cond_c

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v2, :cond_c

    .line 1225
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1232
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 1234
    .local v0, diff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1241
    if-lez v0, :cond_d

    .line 1243
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1257
    :cond_7
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1259
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1260
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1262
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_8

    .line 1263
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1264
    :cond_8
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_9

    .line 1265
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1267
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1270
    .end local v0           #diff:I
    :cond_a
    iget-boolean v2, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_b

    .line 1271
    iput-boolean v7, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 1274
    :cond_b
    sget v2, Landroid/webkit/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1275
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1276
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1279
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$TBHandler;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerView$TBHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1228
    .end local v1           #msg:Landroid/os/Message;
    :cond_c
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1246
    .restart local v0       #diff:I
    :cond_d
    if-nez v0, :cond_7

    .line 1248
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_7

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 1251
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1252
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "context"
    .parameter "imagetRect"

    .prologue
    const/4 v5, 0x1

    .line 3140
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 3141
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 3142
    invoke-virtual {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 3144
    .local v0, re:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3146
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3147
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 3151
    .local v1, reh:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3153
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3154
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 3159
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1419
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 1423
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1424
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1426
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1428
    return-void
.end method

.method public registerNotificationListener(Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1431
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1432
    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    .prologue
    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1436
    return-void
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 2635
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2639
    :cond_0
    :goto_0
    return-void

    .line 2637
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2638
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 2642
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2644
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2645
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 1439
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 2649
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return v3

    .line 2651
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2653
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2654
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2655
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2656
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2659
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2664
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2666
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 2660
    :catch_0
    move-exception v0

    .line 2661
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2664
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2670
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2683
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    if-eqz p1, :cond_2

    .line 2673
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2674
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 2677
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 2678
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2679
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2680
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2686
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2702
    :goto_0
    return-void

    .line 2688
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 2689
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2691
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 2692
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2693
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2701
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2697
    :catch_0
    move-exception v0

    .line 2698
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .parameter "defaultFontSize"

    .prologue
    .line 2709
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2710
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 2714
    :goto_0
    return-void

    .line 2712
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2717
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2719
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2721
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 2722
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2724
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 2725
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2726
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2729
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2734
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2730
    :catch_0
    move-exception v0

    .line 2731
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .parameter "bIsActive"

    .prologue
    .line 2739
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 2741
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 2744
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 2745
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3958
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 3959
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 2757
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 2758
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 2759
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1444
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 1445
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 2748
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 2749
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 2752
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 2753
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 2754
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 1
    .parameter "viewWidth"

    .prologue
    .line 2762
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 2763
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2764
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 2766
    :cond_0
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1448
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1451
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1452
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1454
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1458
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1459
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1461
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1462
    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1465
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1468
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1469
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1471
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 1475
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1476
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1477
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1479
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1481
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 2769
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2773
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2772
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .parameter "curSelStart"
    .parameter "curSelEnd"

    .prologue
    .line 2776
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2780
    :cond_0
    :goto_0
    return-void

    .line 2778
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2779
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "imagetRect"

    .prologue
    .line 3163
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3165
    return-void
.end method

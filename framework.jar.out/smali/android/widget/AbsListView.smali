.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$TwFlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final DEBUG_BOUNCE:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final LANDSCAPE_ROTATION_LEFT_TILT_MOTION:I = 0x3

.field private static final LANDSCAPE_ROTATION_RIGHT_TILT_MOTION:I = 0x2

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PORTRAIT_TILT_MOTION:I = 0x1

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mCanStatusBarHide:Z

.field private static mCurrentOrientationMode:I


# instance fields
.field private isActionScroll:Z

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Landroid/widget/BounceController;

.field protected final mBounceEnabled:Z

.field protected mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHasWindowFocusForMotion:Z

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field private mIsDoubleTapDone:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field protected mNeedToInvalidateParent:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTiltMotionEnable:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field mTouchPaddingLeft:I

.field mTouchPaddingRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    sput v0, Landroid/widget/AbsListView;->mCurrentOrientationMode:I

    .line 135
    sput-boolean v0, Landroid/widget/AbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 141
    sput-boolean v0, Landroid/widget/AbsListView;->mCanStatusBarHide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 989
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 110
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDoubleTapDone:Z

    .line 112
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 114
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mTiltMotionEnable:Z

    .line 116
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 118
    iput-object v4, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 272
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 305
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 327
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 333
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 343
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 348
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 354
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 359
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 364
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 369
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 374
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 379
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 385
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 435
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 466
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 504
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 525
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 527
    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 555
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 559
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 563
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 570
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 572
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 620
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 643
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 645
    new-array v1, v5, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 655
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 703
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 823
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 832
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 840
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mNeedToInvalidateParent:Z

    .line 2964
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4074
    iput-boolean v2, p0, Landroid/widget/AbsListView;->isActionScroll:Z

    .line 7273
    new-instance v1, Landroid/widget/AbsListView$4;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 990
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 992
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 993
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 994
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 995
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1000
    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1001
    const-string v1, "AbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1005
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1008
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1009
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1012
    invoke-direct/range {p0 .. p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDoubleTapDone:Z

    .line 112
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 114
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mTiltMotionEnable:Z

    .line 116
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 118
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 272
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 305
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 327
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 333
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 343
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 348
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 354
    new-instance v13, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 359
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 364
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 369
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 374
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 379
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 385
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 435
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 466
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 504
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 525
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 527
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 555
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 559
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 563
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 570
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 572
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 620
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 643
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 645
    const/4 v13, 0x1

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 655
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 703
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 823
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 832
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 840
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mNeedToInvalidateParent:Z

    .line 2964
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4074
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->isActionScroll:Z

    .line 7273
    new-instance v13, Landroid/widget/AbsListView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 1013
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1015
    sget-object v13, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1018
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1019
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 1020
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1026
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1027
    .local v10, stackFromBottom:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1029
    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1030
    .local v8, scrollingCacheEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1032
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1033
    .local v12, useTextFilter:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1035
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1037
    .local v11, transcriptMode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1039
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 1040
    .local v4, color:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1042
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1043
    .local v7, enableFastScroll:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1045
    const/16 v13, 0x9

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1046
    .local v9, smoothScrollbar:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1048
    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1049
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1053
    const/16 v13, 0x2d

    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1065
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v13, :cond_1

    .line 1066
    const-string v13, "AbsListView"

    const-string v14, "Get MotionRecognitionManager"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string/jumbo v13, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1070
    :cond_1
    return-void

    .line 1055
    :catch_0
    move-exception v6

    .line 1056
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1057
    const-string v13, "AbsListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException occured: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5502(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDoubleTapDone:Z

    return p1
.end method

.method static synthetic access$5600(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6666
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 6667
    const/4 v2, 0x1

    .line 6685
    :cond_0
    return v2

    .line 6668
    :cond_1
    const/4 v2, 0x1

    .line 6670
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6671
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6672
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6673
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6674
    const/4 v2, 0x0

    .line 6675
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6678
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 6679
    const/4 v2, 0x0

    .line 6680
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6671
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 5475
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5476
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5491
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5492
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1433
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1434
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v1

    .line 1436
    :cond_1
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 1437
    goto :goto_0

    .line 1439
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5467
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 5468
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5469
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5470
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5472
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 6404
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 6405
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6406
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6407
    .local v2, p:Landroid/widget/PopupWindow;
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 6409
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090105

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6414
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6416
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6417
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6418
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6419
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6420
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6421
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6422
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6423
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6424
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6425
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6426
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6427
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6429
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 6430
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6434
    :goto_0
    return-void

    .line 6432
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 6171
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6172
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6174
    :cond_0
    return-void
.end method

.method private doBoost()V
    .locals 2

    .prologue
    .line 7709
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 7711
    .local v0, dvfsHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 7712
    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7732
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2558
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2559
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2560
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2561
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2563
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6689
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6690
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6691
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6693
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 6218
    sparse-switch p2, :sswitch_data_0

    .line 6251
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6220
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 6221
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6222
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6223
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6255
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 6256
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 6257
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 6226
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6227
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 6228
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6229
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 6230
    .restart local v1       #dY:I
    goto :goto_0

    .line 6232
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 6233
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6234
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6235
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6236
    .restart local v1       #dY:I
    goto :goto_0

    .line 6238
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6239
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6240
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6241
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6242
    .restart local v1       #dY:I
    goto :goto_0

    .line 6245
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6246
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6247
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6248
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6249
    .restart local v1       #dY:I
    goto :goto_0

    .line 6218
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1075
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1076
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1077
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1078
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1079
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1081
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1082
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1083
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1084
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1085
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1086
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1088
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1090
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    .line 1091
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 1094
    invoke-virtual {p0}, Landroid/widget/AbsListView;->CheckStatusBarHide()Z

    move-result v1

    sput-boolean v1, Landroid/widget/AbsListView;->mCanStatusBarHide:Z

    .line 1095
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4191
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4192
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4196
    :goto_0
    return-void

    .line 4194
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4199
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4200
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4202
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 7685
    const-string v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7686
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 4303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4304
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4305
    .local v1, pointerId:I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 4309
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 4310
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4311
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4312
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4313
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4318
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4320
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 4309
    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6190
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6191
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6192
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6195
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 6196
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6197
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6202
    :goto_0
    return-void

    .line 6200
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2460
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2462
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 4205
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4209
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 7309
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 7310
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 7311
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 7314
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 7254
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7255
    .local v1, size:I
    if-lez v1, :cond_2

    .line 7257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7258
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7259
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 7260
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7266
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 7257
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7264
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 7266
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .parameter "y"

    .prologue
    .line 3303
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3304
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3305
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3307
    .local v18, incrementalDeltaY:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 3315
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3317
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3320
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3326
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 3328
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3329
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3330
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3335
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 3336
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3345
    .local v19, motionIndex:I
    :goto_1
    const/16 v22, 0x0

    .line 3346
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3347
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_2

    .line 3348
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3352
    :cond_2
    const/16 v16, 0x0

    .line 3353
    .local v16, atEdge:Z
    if-eqz v18, :cond_3

    .line 3354
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3358
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3359
    if-eqz v21, :cond_7

    .line 3362
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3363
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_6

    .line 3366
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3368
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3369
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3371
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3372
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3376
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v27

    .line 3377
    .local v27, overscrollMode:I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3379
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3380
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3381
    if-lez v29, :cond_b

    .line 3382
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3383
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3384
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3394
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3395
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3397
    .end local v23           #motionViewRealTop:I
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 3466
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_8
    :goto_3
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_9
    move/from16 v18, v17

    .line 3305
    goto/16 :goto_0

    .line 3342
    .restart local v18       #incrementalDeltaY:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_1

    .line 3386
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_b
    if-gez v29, :cond_6

    .line 3387
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3389
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 3399
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3400
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3401
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    .line 3402
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3403
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_15

    const/16 v24, 0x1

    .line 3405
    .local v24, newDirection:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_d

    .line 3406
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 3409
    :cond_d
    move/from16 v0, v18

    neg-int v8, v0

    .line 3410
    .local v8, overScrollDistance:I
    if-gez v25, :cond_e

    if-gez v26, :cond_f

    :cond_e
    if-lez v25, :cond_16

    if-gtz v26, :cond_16

    .line 3411
    :cond_f
    move/from16 v0, v26

    neg-int v8, v0

    .line 3412
    add-int v18, v18, v8

    .line 3417
    :goto_5
    if-eqz v8, :cond_12

    .line 3418
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3420
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v27

    .line 3421
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_10

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3423
    :cond_10
    if-lez v29, :cond_17

    .line 3424
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3425
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3426
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3434
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3438
    .end local v27           #overscrollMode:I
    :cond_12
    if-eqz v18, :cond_14

    .line 3440
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollY:I

    .line 3441
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3445
    if-eqz v18, :cond_13

    .line 3446
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3449
    :cond_13
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3454
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 3456
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3457
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3458
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3459
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3460
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3462
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 3463
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3403
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_15
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 3414
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3428
    .restart local v27       #overscrollMode:I
    :cond_17
    if-gez v29, :cond_11

    .line 3429
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3430
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 3458
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_18
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 6181
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6183
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6185
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6187
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3258
    iget v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 3259
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3260
    .local v1, distance:I
    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 3261
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_7

    .line 3263
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->doBoost()V

    .line 3265
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3266
    if-eqz v4, :cond_5

    .line 3267
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3268
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3273
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3279
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 3280
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3282
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3283
    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3284
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3285
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3287
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3291
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3292
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3293
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3295
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 3299
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 3260
    goto :goto_0

    .line 3270
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3271
    if-lez v0, :cond_6

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 3299
    goto :goto_2
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 7320
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 7321
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 7322
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 7324
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1697
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4327
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4328
    .local v2, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4329
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4331
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 4342
    :cond_0
    return-void

    .line 4335
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 4336
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4337
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4338
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4340
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4335
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 6514
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 6476
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 6394
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 6535
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1235
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1238
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1239
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 6440
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6441
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6443
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6444
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6447
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2042
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2043
    .local v1, count:I
    if-lez v1, :cond_2

    .line 2044
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_3

    .line 2045
    mul-int/lit8 v2, v1, 0x64

    .line 2047
    .local v2, extent:I
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2048
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2049
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2050
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2051
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 2054
    :cond_0
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2055
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2056
    .local v0, bottom:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2057
    if-lez v3, :cond_1

    .line 2058
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v3

    sub-int/2addr v2, v7

    .line 2065
    :cond_1
    move v4, v2

    .line 2085
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return v4

    .line 2082
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 2090
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2091
    .local v2, firstPosition:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2092
    .local v0, childCount:I
    if-ltz v2, :cond_4

    if-lez v0, :cond_4

    .line 2096
    const/4 v5, 0x0

    .line 2097
    .local v5, retVal:I
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v9, :cond_1

    .line 2098
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2099
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2100
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2101
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2102
    mul-int/lit8 v9, v2, 0x64

    mul-int/lit8 v10, v6, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mScrollY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2135
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v5

    .line 2124
    .restart local v5       #retVal:I
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2125
    .local v1, count:I
    if-nez v2, :cond_2

    .line 2126
    const/4 v4, 0x0

    .line 2132
    .local v4, index:I
    :goto_1
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v4

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v5, v8

    goto :goto_0

    .line 2127
    .end local v4           #index:I
    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    .line 2128
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 2130
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v4, v2, v8

    .restart local v4       #index:I
    goto :goto_1

    .end local v1           #count:I
    .end local v4           #index:I
    .end local v5           #retVal:I
    :cond_4
    move v5, v8

    .line 2135
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2141
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2142
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2143
    .local v0, result:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2145
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2150
    :cond_0
    :goto_0
    return v0

    .line 2148
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 5949
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5951
    const/4 v7, 0x0

    .line 5952
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 5953
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 5954
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5956
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 5957
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 5959
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 5960
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5961
    .local v9, end:I
    const/4 v10, 0x0

    .line 5962
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 5963
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5964
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 5965
    const/4 v10, 0x1

    .line 5966
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5967
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5972
    .end local v13           #searchId:J
    :cond_0
    if-nez v10, :cond_1

    .line 5973
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5974
    add-int/lit8 v8, v8, -0x1

    .line 5975
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5976
    const/4 v7, 0x1

    .line 5977
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 5978
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5952
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 5962
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 5983
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5987
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 5988
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 5990
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2945
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6725
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2466
    const/4 v2, 0x0

    .line 2467
    .local v2, saveCount:I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2468
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2469
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2470
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 2471
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 2472
    .local v4, scrollY:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2474
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2477
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2478
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 2479
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2482
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2484
    if-eqz v1, :cond_2

    .line 2485
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2488
    :cond_2
    if-eqz v0, :cond_3

    .line 2489
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2490
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2492
    :cond_3
    return-void

    .line 2467
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3162
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 4099
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4116
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    .line 4117
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 4118
    .local v4, scrollY:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4120
    .local v2, restoreCount:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 4121
    .local v1, leftPadding:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 4122
    .local v3, rightPadding:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 4132
    .local v5, width:I
    int-to-float v6, v1

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4136
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4137
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4138
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4140
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4142
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v5           #width:I
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4144
    .restart local v2       #restoreCount:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 4145
    .restart local v1       #leftPadding:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 4146
    .restart local v3       #rightPadding:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 4147
    .restart local v5       #width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 4157
    .local v0, height:I
    neg-int v6, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4160
    const/high16 v6, 0x4334

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4161
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4162
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4163
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4165
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4168
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v4           #scrollY:I
    .end local v5           #width:I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v6, :cond_4

    .line 4169
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 4170
    .restart local v4       #scrollY:I
    if-eqz v4, :cond_5

    .line 4172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4173
    .restart local v2       #restoreCount:I
    int-to-float v6, v4

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4174
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v6, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 4175
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4180
    .end local v2           #restoreCount:I
    .end local v4           #scrollY:I
    :cond_4
    :goto_0
    return-void

    .line 4177
    .restart local v4       #scrollY:I
    :cond_5
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v6, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2674
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2675
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2676
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 7328
    :try_start_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->unregisterMotionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7330
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7332
    return-void

    .line 7330
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 5800
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5801
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 5806
    :cond_0
    :goto_0
    return v1

    .line 5805
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5806
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 6525
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 6530
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2184
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2185
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2186
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 2206
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 2189
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2190
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 2201
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2204
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2205
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2206
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2516
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getBounceController()Landroid/widget/BounceController;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6596
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1151
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1213
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1214
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1225
    :cond_1
    return-object v3

    .line 1217
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1218
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1219
    .local v0, count:I
    new-array v3, v0, [J

    .line 1221
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1222
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1181
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1185
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1377
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3076
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1683
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1686
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1687
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1692
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5740
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5729
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2501
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2351
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2339
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2511
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2323
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2324
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6564
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1994
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1997
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2155
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2156
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2157
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 2178
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 2160
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2161
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2168
    :cond_2
    const/4 v3, 0x0

    .line 2174
    .local v3, top:I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2177
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2178
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2506
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6559
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1504
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1507
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5994
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 5995
    .local v1, count:I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5996
    .local v4, lastHandledItemCount:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5998
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5999
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 6002
    :cond_0
    if-lez v1, :cond_e

    .line 6007
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 6010
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 6012
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 6013
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6147
    :cond_1
    :goto_0
    return-void

    .line 6015
    :cond_2
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 6016
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 6017
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 6018
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 6021
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6022
    .local v0, childCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 6023
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6024
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6025
    .local v2, lastBottom:I
    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 6027
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2           #lastBottom:I
    :cond_4
    move v2, v5

    .line 6024
    goto :goto_1

    .line 6033
    .restart local v2       #lastBottom:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6036
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_6
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 6101
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 6104
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6107
    .local v6, newPos:I
    if-lt v6, v1, :cond_8

    .line 6108
    add-int/lit8 v6, v1, -0x1

    .line 6110
    :cond_8
    if-gez v6, :cond_9

    .line 6111
    const/4 v6, 0x0

    .line 6115
    :cond_9
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6117
    .local v7, selectablePos:I
    if-ltz v7, :cond_c

    .line 6118
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 6038
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6049
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6050
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 6059
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 6060
    .restart local v6       #newPos:I
    if-ltz v6, :cond_7

    .line 6064
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6065
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_7

    .line 6067
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 6069
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 6074
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6085
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6081
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 6094
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6095
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 6122
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6123
    if-ltz v7, :cond_e

    .line 6124
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6131
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_d
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 6139
    :cond_e
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6140
    iput v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6141
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 6142
    iput v13, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 6143
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 6144
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 6145
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6146
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 6139
    goto :goto_3

    .line 6036
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 6453
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5754
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5755
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5756
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5758
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5759
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5761
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5762
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5763
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5765
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5813
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 5814
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5815
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5816
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5817
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1585
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1595
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1598
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1600
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 1

    .prologue
    .line 1499
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1518
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 6262
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1165
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2496
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1634
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1567
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1708
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1677
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2722
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2723
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2725
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2619
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2655
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2624
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2625
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2628
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2630
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2631
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2633
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2635
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2637
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2638
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2639
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2640
    if-eqz v1, :cond_6

    .line 2641
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2647
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2648
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2649
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2651
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2652
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2644
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2284
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 2391
    aput-boolean v3, p2, v3

    .line 2394
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 2397
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2403
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2410
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 2411
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2412
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 2413
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2434
    :cond_0
    :goto_0
    return-object v0

    .line 2420
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 2421
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 2424
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2425
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 2426
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2729
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 2731
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2732
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2733
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2734
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2737
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2738
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2739
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2742
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2743
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2744
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2746
    :cond_1
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    .line 2768
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 6633
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 6635
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 6637
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 6639
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4400(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 6640
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 6641
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 6642
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 6643
    const/4 v4, 0x0

    .line 6644
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6641
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6635
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 6651
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4500(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 6652
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 6653
    const/4 v4, 0x0

    .line 6654
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4600(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 6655
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 6656
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 6657
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 6658
    const/4 v4, 0x0

    .line 6656
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6662
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 2681
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2683
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2712
    :cond_0
    :goto_0
    return-object v3

    .line 2689
    :cond_1
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2697
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2698
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2699
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2700
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2701
    move v0, v2

    .line 2707
    :cond_2
    if-ltz v0, :cond_0

    .line 2708
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2699
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 6341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6345
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6346
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6347
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6348
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 6381
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6382
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6383
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 6385
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2772
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2775
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2778
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 2780
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2781
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2782
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2783
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2784
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2787
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2788
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2789
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2792
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 2793
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2794
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2797
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 2798
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2799
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2802
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2803
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2806
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 2807
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2810
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2811
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2814
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 2815
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2818
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 2819
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2820
    iput-object v3, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2822
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    .line 2838
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 6151
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6152
    sparse-switch p1, :sswitch_data_0

    .line 6164
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6165
    return-void

    .line 6154
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6155
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 6159
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6160
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6164
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6152
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 6517
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6518
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6519
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6521
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2002
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2003
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2004
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2007
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2008
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2009
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2011
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2013
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 4078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 4079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4094
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 4081
    :pswitch_0
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4082
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4083
    .local v1, vscroll:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 4084
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 4085
    .local v0, delta:I
    iput-boolean v2, p0, Landroid/widget/AbsListView;->isActionScroll:Z

    .line 4086
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4079
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 6457
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6459
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 6460
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6469
    :cond_0
    :goto_0
    return-void

    .line 6464
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6465
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 0

    .prologue
    .line 7706
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4224
    .local v0, action:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v10, :cond_0

    .line 4225
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 4226
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 4299
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 4231
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 4299
    goto :goto_0

    .line 4233
    :pswitch_1
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4234
    .local v4, touchMode:I
    const/4 v10, 0x6

    if-eq v4, v10, :cond_2

    const/4 v10, 0x5

    if-ne v4, v10, :cond_3

    .line 4235
    :cond_2
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 4239
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 4240
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 4241
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4243
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 4244
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 4248
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4249
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4250
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4251
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4252
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4253
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4254
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4256
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v10, -0x8000

    iput v10, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4257
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4258
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4259
    if-ne v4, v12, :cond_1

    goto :goto_0

    .line 4266
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 4268
    :pswitch_3
    iget v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 4269
    .local v3, pointerIndex:I
    if-ne v3, v11, :cond_5

    .line 4270
    const/4 v3, 0x0

    .line 4271
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4273
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 4274
    .restart local v7       #y:I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4275
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4276
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 4286
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4287
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4288
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4289
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 4294
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 4231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4266
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3118
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3123
    sparse-switch p1, :sswitch_data_0

    .line 3153
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 3126
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3129
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3132
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3133
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3134
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3135
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3137
    :cond_2
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    goto :goto_1

    .line 3145
    .end local v0           #view:Landroid/view/View;
    :sswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    if-eqz v1, :cond_3

    .line 3146
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v1}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 3147
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 3149
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    goto :goto_0

    .line 3123
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2240
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2241
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2242
    if-eqz p1, :cond_1

    .line 2243
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2244
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2245
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2247
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2250
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_2

    .line 2251
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2254
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2255
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2257
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2258
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 2213
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2214
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2216
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2217
    .local v4, listPadding:Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2218
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2219
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2220
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2224
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2226
    .local v0, childCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2227
    .local v3, listBottom:I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2228
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2229
    .local v1, lastBottom:I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2232
    .end local v0           #childCount:I
    .end local v1           #lastBottom:I
    .end local v2           #lastChild:Landroid/view/View;
    .end local v3           #listBottom:I
    :cond_1
    return-void

    .restart local v0       #childCount:I
    .restart local v2       #lastChild:Landroid/view/View;
    .restart local v3       #listBottom:I
    :cond_2
    move v1, v3

    .line 2228
    goto :goto_0

    .line 2229
    .restart local v1       #lastBottom:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 4065
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 4066
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4067
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 4068
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4070
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4072
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6731
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 6732
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6733
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 6734
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6735
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6742
    :cond_0
    :goto_0
    return v0

    .line 6738
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 6739
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6740
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6754
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1906
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1908
    .local v0, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1909
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1911
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1913
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 1914
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1915
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1916
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1917
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1918
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1932
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1934
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1935
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1938
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1939
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1942
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1944
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1946
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1949
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1950
    return-void

    .line 1919
    :cond_4
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1920
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1923
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1924
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1925
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1926
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1927
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1928
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1929
    iput v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1833
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1835
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1837
    .local v9, superState:Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1839
    .local v8, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_2

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v12, :cond_2

    const/4 v3, 0x1

    .line 1840
    .local v3, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1841
    .local v6, selectedId:J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1842
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1844
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_3

    .line 1846
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1847
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1848
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1875
    :goto_1
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1876
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_0

    .line 1877
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1878
    .local v10, textFilter:Landroid/widget/EditText;
    if-eqz v10, :cond_0

    .line 1879
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1880
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 1881
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1886
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v10           #textFilter:Landroid/widget/EditText;
    :cond_0
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1888
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_1

    .line 1889
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1891
    :cond_1
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_8

    .line 1892
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1893
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1894
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_7

    .line 1895
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1894
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1839
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1850
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_3
    if-eqz v3, :cond_5

    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_5

    .line 1860
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1861
    .local v11, v:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1862
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1863
    .local v2, firstPos:I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v12, :cond_4

    .line 1864
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 1866
    :cond_4
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1867
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1869
    .end local v2           #firstPos:I
    .end local v11           #v:Landroid/view/View;
    :cond_5
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1870
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1871
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1886
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 1897
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1899
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1901
    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2521
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2523
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2526
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 2527
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2529
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 6484
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6485
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6486
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6487
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 6489
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6490
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6496
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 6497
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6499
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 6500
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6507
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 6491
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 6493
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6494
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6502
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .parameter "ev"

    .prologue
    .line 3510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mMotionEnable:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 3532
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v28

    if-nez v28, :cond_3

    .line 3535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v28

    if-eqz v28, :cond_2

    :cond_1
    const/16 v28, 0x1

    .line 4060
    :goto_0
    return v28

    .line 3535
    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    .line 3538
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 3539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 3540
    .local v17, intercepted:Z
    if-eqz v17, :cond_4

    .line 3541
    const/16 v28, 0x1

    goto :goto_0

    .line 3545
    .end local v17           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3549
    .local v4, action:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3570
    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 4060
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v28, 0x1

    goto :goto_0

    .line 3572
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_1

    .line 3588
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3589
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 3590
    .local v26, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 3591
    .local v27, y:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v19

    .line 3604
    .local v19, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    .line 3605
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    if-ltz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v28

    check-cast v28, Landroid/widget/ListAdapter;

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 3615
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    if-nez v28, :cond_6

    .line 3618
    new-instance v28, Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3620
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3635
    :cond_7
    :goto_2
    if-ltz v19, :cond_8

    .line 3637
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 3638
    .local v24, v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3640
    .end local v24           #v:Landroid/view/View;
    :cond_8
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 3641
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3642
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3643
    const/high16 v28, -0x8000

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 3648
    .end local v19           #motionPosition:I
    .end local v26           #x:I
    .end local v27           #y:I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 3649
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 3650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3574
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3578
    :cond_9
    const/16 v28, 0x5

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 3580
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3581
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3582
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3583
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3622
    .restart local v19       #motionPosition:I
    .restart local v26       #x:I
    .restart local v27       #y:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 3625
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3627
    const/16 v28, 0x3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3628
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3629
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v19

    .line 3630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 3657
    .end local v19           #motionPosition:I
    .end local v26           #x:I
    .end local v27           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 3658
    .local v22, pointerIndex:I
    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 3659
    const/16 v22, 0x0

    .line 3660
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3669
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 3670
    .restart local v27       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3677
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    .line 3679
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v28, v0

    sub-int v10, v27, v28

    .line 3724
    .local v10, deltaY:I
    goto/16 :goto_1

    .line 3727
    .end local v10           #deltaY:I
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 3734
    .end local v22           #pointerIndex:I
    .end local v27           #y:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_3

    .line 3937
    :cond_c
    :goto_4
    :pswitch_8
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3946
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3948
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 3949
    .local v12, handler:Landroid/os/Handler;
    if-eqz v12, :cond_e

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3953
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 3955
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 3965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/StrictMode$Span;->finish()V

    .line 3966
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 3738
    .end local v12           #handler:Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    .line 3739
    .restart local v19       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3741
    .local v5, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 3742
    .local v26, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v26, v28

    if-lez v28, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v26, v28

    if-gez v28, :cond_16

    const/4 v14, 0x1

    .line 3745
    .local v14, inList:Z
    :goto_5
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v28

    if-nez v28, :cond_1b

    if-eqz v14, :cond_1b

    .line 3746
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 3747
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3750
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v28, v0

    if-nez v28, :cond_10

    .line 3751
    new-instance v28, Landroid/widget/AbsListView$PerformClick;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 3754
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v21, v0

    .line 3755
    .local v21, performClick:Landroid/widget/AbsListView$PerformClick;
    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3756
    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3758
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3760
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 3761
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 3762
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_12

    .line 3763
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    if-nez v28, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    :goto_6
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3766
    :cond_12
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3767
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v28, v0

    if-nez v28, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 3768
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3769
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 3770
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3771
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3772
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3773
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3776
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_13

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 3777
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3780
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    .line 3781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3783
    :cond_14
    new-instance v28, Landroid/widget/AbsListView$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v5, v2}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3803
    :cond_15
    :goto_7
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 3742
    .end local v12           #handler:Landroid/os/Handler;
    .end local v14           #inList:Z
    .end local v21           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 3763
    .restart local v12       #handler:Landroid/os/Handler;
    .restart local v14       #inList:Z
    .restart local v21       #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v28, v0

    goto/16 :goto_6

    .line 3797
    :cond_18
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3798
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 3800
    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_7

    .line 3804
    .end local v12           #handler:Landroid/os/Handler;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v28, v0

    if-nez v28, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v28, v0

    if-nez v28, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 3806
    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 3811
    .end local v21           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_1b
    if-eqz v5, :cond_1c

    if-nez v14, :cond_1c

    .line 3812
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3815
    :cond_1c
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3816
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_4

    .line 3819
    .end local v5           #child:Landroid/view/View;
    .end local v14           #inList:Z
    .end local v19           #motionPosition:I
    .end local v26           #x:F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3820
    .local v6, childCount:I
    if-lez v6, :cond_24

    .line 3821
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v11

    .line 3822
    .local v11, firstChildTop:I
    add-int/lit8 v28, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 3823
    .local v18, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 3824
    .local v8, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v7, v28, v29

    .line 3825
    .local v7, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    if-nez v28, :cond_1d

    if-lt v11, v8, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    add-int v28, v28, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v28

    sub-int v28, v28, v7

    move/from16 v0, v18

    move/from16 v1, v28

    if-gt v0, v1, :cond_1d

    .line 3828
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3829
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3831
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 3834
    .local v25, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v23, 0x0

    .line 3836
    .local v23, tempVelocity:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVelocityPolynomialType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 3842
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 3844
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getMonomialYVelocity(I)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v29, v0

    const v30, 0x3e99999a

    add-float v29, v29, v30

    mul-float v23, v28, v29

    .line 3854
    :goto_8
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    .line 3874
    .local v16, initialVelocity:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    if-nez v28, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v28, v0

    sub-int v28, v8, v28

    move/from16 v0, v28

    if-eq v11, v0, :cond_22

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    add-int v28, v28, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_22

    .line 3879
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    if-nez v28, :cond_20

    .line 3886
    new-instance v28, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3890
    :cond_20
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 3849
    .end local v16           #initialVelocity:I
    :cond_21
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3850
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v29, v0

    mul-float v23, v28, v29

    goto/16 :goto_8

    .line 3894
    .restart local v16       #initialVelocity:I
    :cond_22
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3895
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3899
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto/16 :goto_4

    .line 3905
    .end local v7           #contentBottom:I
    .end local v8           #contentTop:I
    .end local v11           #firstChildTop:I
    .end local v16           #initialVelocity:I
    .end local v18           #lastChildBottom:I
    .end local v23           #tempVelocity:F
    .end local v25           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_24
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3906
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3911
    .end local v6           #childCount:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    if-nez v28, :cond_25

    .line 3918
    new-instance v28, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3922
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 3923
    .restart local v25       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3924
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v16, v0

    .line 3927
    .restart local v16       #initialVelocity:I
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3928
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_26

    .line 3929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    .line 3931
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 3972
    .end local v16           #initialVelocity:I
    .end local v25           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_4

    .line 3993
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3994
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3995
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3996
    .local v20, motionView:Landroid/view/View;
    if-eqz v20, :cond_27

    .line 3997
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3999
    :cond_27
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4001
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 4002
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_28

    .line 4003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4006
    :cond_28
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4009
    .end local v12           #handler:Landroid/os/Handler;
    .end local v20           #motionView:Landroid/view/View;
    :goto_9
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4013
    :cond_29
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 3974
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    if-nez v28, :cond_2a

    .line 3981
    new-instance v28, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3985
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_9

    .line 4018
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4019
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v26, v0

    .line 4020
    .local v26, x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v27, v0

    .line 4021
    .restart local v27       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v19

    .line 4022
    .restart local v19       #motionPosition:I
    if-ltz v19, :cond_2b

    .line 4024
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 4025
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4026
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocusable()Z

    move-result v28

    if-nez v28, :cond_5

    .line 4028
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 4031
    .end local v24           #v:Landroid/view/View;
    :cond_2b
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4032
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 4040
    .end local v19           #motionPosition:I
    .end local v26           #x:I
    .end local v27           #y:I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 4041
    .local v15, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 4042
    .local v13, id:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4043
    .restart local v26       #x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 4044
    .restart local v27       #y:I
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4045
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4046
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 4047
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 4048
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v19

    .line 4049
    .restart local v19       #motionPosition:I
    if-ltz v19, :cond_2c

    .line 4051
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 4052
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4053
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4055
    .end local v24           #v:Landroid/view/View;
    :cond_2c
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3572
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 3670
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3734
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3972
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 3469
    if-eqz p1, :cond_2

    .line 3471
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3476
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3481
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3483
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3502
    :cond_1
    :goto_0
    return-void

    .line 3485
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3486
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3487
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3488
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3490
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3491
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3494
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3495
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 3496
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3497
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3498
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2842
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 2847
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 2880
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2882
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 2883
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2884
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2885
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2888
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 2889
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 2890
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2892
    :cond_0
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2893
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2894
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 2895
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2896
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2900
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2902
    if-ne v0, v2, :cond_2

    .line 2904
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2930
    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 2931
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 2880
    goto :goto_0

    .line 2907
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2909
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 2913
    :cond_5
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2916
    if-ne v0, v2, :cond_6

    .line 2918
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2923
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2924
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2925
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1318
    const/4 v7, 0x0

    .line 1319
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1321
    .local v6, dispatchItemClick:Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1322
    const/4 v7, 0x1

    .line 1324
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1326
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 1327
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1328
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    if-eqz v5, :cond_6

    .line 1330
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1335
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1336
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1340
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1341
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1343
    const/4 v6, 0x0

    .line 1360
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1361
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1362
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1365
    :cond_3
    if-eqz v6, :cond_4

    .line 1366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1369
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 1326
    goto :goto_0

    .line 1332
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1338
    :cond_7
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1345
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 1346
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 1347
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 1348
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1349
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1350
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1351
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1352
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1354
    :cond_9
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 1346
    goto :goto_4

    .line 1355
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1356
    :cond_c
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3050
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3051
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3053
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3054
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3071
    :cond_0
    :goto_0
    return v6

    .line 3059
    :cond_1
    const/4 v6, 0x0

    .line 3060
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3061
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3064
    :cond_2
    if-nez v6, :cond_3

    .line 3065
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3066
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3068
    :cond_3
    if-eqz v6, :cond_0

    .line 3069
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3174
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3175
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3176
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3177
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3180
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3181
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3182
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3183
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3184
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3185
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3186
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3190
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 3181
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3190
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3202
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3203
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 3204
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3206
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 2438
    if-eq p1, v6, :cond_0

    .line 2439
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2442
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2443
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2444
    instance-of v2, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2445
    check-cast v2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2447
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 2450
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2451
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2452
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2453
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2454
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 2457
    :cond_2
    return-void

    .line 2452
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6607
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6608
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$4300(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 6611
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6612
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6613
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6616
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6617
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6618
    if-eqz v3, :cond_0

    .line 6620
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6611
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6624
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6625
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6626
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 5774
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 5775
    .local v0, position:I
    if-gez v0, :cond_0

    .line 5776
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5778
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5779
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5780
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 869
    invoke-direct {p0}, Landroid/widget/AbsListView;->registerMotionListener()V

    .line 870
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 871
    return-void
.end method

.method public registerTiltMotion()V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 4365
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 4366
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4367
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4368
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4371
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 4213
    if-eqz p1, :cond_0

    .line 4214
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4216
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4217
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2017
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2018
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2020
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1726
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1727
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1728
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1731
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2026
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2027
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2028
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2029
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2030
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 2031
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 2032
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2033
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2034
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2035
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2036
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2037
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2038
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5845
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5847
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 5848
    const/16 v17, 0x0

    .line 5943
    :goto_0
    return v17

    .line 5851
    :cond_0
    const/4 v13, 0x0

    .line 5853
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5854
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5855
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5856
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5857
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 5859
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5860
    move v12, v14

    .line 5862
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5863
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5864
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5867
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 5868
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5924
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5929
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5930
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5931
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 5932
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5933
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5934
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5935
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5936
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5937
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5941
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5943
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 5869
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5870
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 5874
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5876
    move v12, v7

    .line 5877
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5878
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5879
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5881
    .local v15, top:I
    if-nez v8, :cond_6

    .line 5883
    move v13, v15

    .line 5885
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5888
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5891
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5893
    add-int v12, v7, v8

    .line 5894
    move v13, v15

    .line 5895
    goto/16 :goto_1

    .line 5877
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5899
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 5900
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 5901
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5903
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 5904
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5905
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5906
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5908
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5909
    move v13, v15

    .line 5910
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5911
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5915
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5916
    add-int v12, v7, v8

    .line 5917
    move v13, v15

    .line 5918
    goto/16 :goto_1

    .line 5903
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5939
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 5943
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 5824
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5826
    const/4 v0, 0x1

    .line 5828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 1609
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1610
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1611
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1612
    .local v1, lastVisiblePosition:I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1621
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_0
    return-void

    .line 1616
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1617
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1620
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 6273
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 6333
    :cond_0
    :goto_0
    return v2

    .line 6277
    :cond_1
    const/4 v2, 0x0

    .line 6278
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 6279
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 6310
    :goto_1
    if-eqz v3, :cond_0

    .line 6311
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6313
    move-object v1, p3

    .line 6314
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 6315
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6318
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6319
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6321
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6322
    goto :goto_0

    .line 6286
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 6287
    goto :goto_1

    .line 6289
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6290
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 6291
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6292
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 6293
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6295
    :cond_3
    const/4 v2, 0x1

    .line 6302
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 6303
    goto :goto_1

    .line 6296
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6298
    const/4 v2, 0x1

    .line 6299
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6306
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 6325
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6326
    goto :goto_0

    .line 6329
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 6279
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 6319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1122
    if-eqz p1, :cond_0

    .line 1123
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1129
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1133
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1136
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 6578
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6579
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6580
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6581
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6582
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6584
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6586
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1392
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1393
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1395
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1397
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1398
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1399
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1401
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1402
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1406
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1407
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1408
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1411
    :cond_3
    return-void
.end method

.method public setCurrentOrientationModeForTiltMotion(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 917
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 2574
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2575
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 849
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 856
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 858
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeEffects(Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V

    .line 861
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedToInvalidateParent:Z

    .line 863
    return-void

    .line 861
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 1479
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1483
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1487
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeOpaqueFlags()V

    .line 1488
    invoke-virtual {p0}, Landroid/widget/AbsListView;->recomputePadding()V

    .line 1489
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1454
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1455
    if-eqz p1, :cond_1

    .line 1456
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1457
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 1462
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1965
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1966
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1970
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1972
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1975
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1976
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1977
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1982
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1983
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1986
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 2973
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 2974
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2267
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 2271
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2272
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2273
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2277
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 2271
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 5294
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5295
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5297
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2300(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5298
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1250
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1257
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1260
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_a

    .line 1261
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1262
    .local v6, oldValue:Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1263
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1264
    if-eqz p2, :cond_8

    .line 1265
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1270
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 1271
    if-eqz p2, :cond_9

    .line 1272
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1277
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 1278
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1279
    .local v3, id:J
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1308
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1309
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v0, :cond_7

    .line 1310
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1311
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1312
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 1267
    .restart local v6       #oldValue:Z
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1274
    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1283
    .end local v6           #oldValue:Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_e

    move v7, v8

    .line 1287
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1288
    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1289
    if-eqz v7, :cond_c

    .line 1290
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1296
    :cond_c
    if-eqz p2, :cond_f

    .line 1297
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1298
    if-eqz v7, :cond_d

    .line 1299
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1301
    :cond_d
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_e
    move v7, v0

    .line 1283
    goto :goto_4

    .line 1302
    .restart local v7       #updateIds:Z
    :cond_f
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1303
    :cond_10
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 886
    if-eqz p1, :cond_0

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1422
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1423
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1425
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1426
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1577
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1578
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1579
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 4186
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 4187
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 4188
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1099
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1100
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1101
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1102
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1103
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->setGlowRecedeAnimationTrigger(Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1104
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1105
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->setGlowRecedeAnimationTrigger(Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1107
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    .line 1114
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1115
    return-void

    .line 1109
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1110
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1112
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 6767
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$4302(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 6768
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 6706
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 6707
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6708
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6710
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6717
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_0
    return-void

    .line 6714
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6716
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    goto :goto_0
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2658
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2659
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2660
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1649
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1650
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1652
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1653
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 2585
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2586
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 2589
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2590
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2591
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2593
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2594
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2595
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2596
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2597
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2598
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2599
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2600
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2601
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2602
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1556
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1557
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 1719
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1720
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1721
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1723
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1665
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1666
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 951
    return-void
.end method

.method public setTiltMotionScrollSpeed(III)V
    .locals 0
    .parameter "step1"
    .parameter "step2"
    .parameter "step3"

    .prologue
    .line 972
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 985
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 986
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 6548
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6549
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 5307
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5308
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1523
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1524
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1527
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2554
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 3082
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 3083
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3084
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3085
    .local v1, id:J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3086
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3087
    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3088
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3091
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 3096
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3097
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 3098
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3099
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 3101
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3102
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3105
    :cond_0
    if-nez v6, :cond_1

    .line 3106
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3108
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3113
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 5396
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_3

    .line 5400
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5408
    :goto_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5409
    .local v2, firstPos:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5410
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 5411
    .local v3, lastPos:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 5412
    .local v4, topLimit:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 5414
    .local v0, bottomLimit:I
    if-eqz p1, :cond_1

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 5420
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5421
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_2

    .line 5422
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5428
    :cond_2
    :goto_1
    return-void

    .line 5404
    .end local v0           #bottomLimit:I
    .end local v1           #childCount:I
    .end local v2           #firstPos:I
    .end local v3           #lastPos:I
    .end local v4           #topLimit:I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 5425
    .restart local v0       #bottomLimit:I
    .restart local v1       #childCount:I
    .restart local v2       #firstPos:I
    .restart local v3       #lastPos:I
    .restart local v4       #topLimit:I
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5426
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 5434
    const/4 v2, -0x1

    .line 5435
    .local v2, index:I
    if-gez p1, :cond_3

    .line 5436
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5441
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 5442
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5443
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5444
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5445
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5447
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5448
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5449
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5450
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 5451
    .local v6, visibleThreshold:F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 5454
    add-int/lit8 v2, v2, 0x1

    .line 5461
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5464
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 5437
    :cond_3
    if-lez p1, :cond_0

    .line 5438
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 5455
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 5458
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 5329
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5330
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5332
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 5333
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 5383
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5384
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5386
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 5387
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 5367
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5368
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5370
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(II)V

    .line 5371
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 5349
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5350
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5352
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 5353
    return-void
.end method

.method public smoothScrollToPositionWithDuration(II)V
    .locals 1
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 5316
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5317
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5319
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->startWithDuration(II)V

    .line 5320
    return-void
.end method

.method public stopTiltScrolling()V
    .locals 0

    .prologue
    .line 961
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2537
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2542
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2540
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 29
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 5505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 5506
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 5507
    const/16 v27, 0x1

    .line 5719
    :goto_0
    return v27

    .line 5510
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v14

    .line 5511
    .local v14, firstTop:I
    add-int/lit8 v27, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v20

    .line 5513
    .local v20, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 5520
    .local v21, listPadding:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 5521
    .local v11, effectivePaddingTop:I
    const/4 v10, 0x0

    .line 5522
    .local v10, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 5523
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 5524
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 5528
    :cond_1
    sub-int v23, v11, v14

    .line 5529
    .local v23, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    sub-int v12, v27, v10

    .line 5530
    .local v12, end:I
    sub-int v24, v20, v12

    .line 5532
    .local v24, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v17, v27, v28

    .line 5533
    .local v17, height:I
    if-gez p1, :cond_2

    .line 5534
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5539
    :goto_1
    if-gez p2, :cond_3

    .line 5540
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5545
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5548
    .local v13, firstPosition:I
    if-nez v13, :cond_4

    .line 5549
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v27, v14, v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5553
    :goto_3
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 5554
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5559
    :goto_4
    if-nez v13, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v14, v0, :cond_7

    if-ltz p2, :cond_7

    .line 5569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 5572
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->isActionScroll:Z

    .line 5575
    if-eqz p2, :cond_6

    const/16 v27, 0x1

    goto/16 :goto_0

    .line 5536
    .end local v13           #firstPosition:I
    :cond_2
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 5542
    :cond_3
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 5551
    .restart local v13       #firstPosition:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 5556
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 5575
    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 5578
    :cond_7
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v20

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    if-gtz p2, :cond_9

    .line 5589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 5592
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->isActionScroll:Z

    .line 5595
    if-eqz p2, :cond_8

    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 5602
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_a

    .line 5618
    :cond_a
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->isActionScroll:Z

    .line 5620
    if-gez p2, :cond_13

    const/4 v9, 0x1

    .line 5622
    .local v9, down:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v19

    .line 5623
    .local v19, inTouchMode:Z
    if-eqz v19, :cond_b

    .line 5624
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5627
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v16

    .line 5628
    .local v16, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v28

    sub-int v15, v27, v28

    .line 5630
    .local v15, footerViewsStart:I
    const/16 v25, 0x0

    .line 5631
    .local v25, start:I
    const/4 v8, 0x0

    .line 5633
    .local v8, count:I
    if-eqz v9, :cond_16

    .line 5634
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v26, v0

    .line 5635
    .local v26, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 5636
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v26, v26, v27

    .line 5638
    :cond_c
    const/16 v18, 0x0

    .local v18, i:I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v6, :cond_d

    .line 5639
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5640
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_14

    .line 5680
    .end local v5           #child:Landroid/view/View;
    .end local v26           #top:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5682
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 5684
    if-lez v8, :cond_e

    .line 5685
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5687
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5689
    if-eqz v9, :cond_f

    .line 5690
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v8

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5693
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5695
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5696
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v23

    if-lt v0, v3, :cond_10

    move/from16 v0, v24

    if-ge v0, v3, :cond_11

    .line 5697
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5700
    :cond_11
    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_19

    .line 5701
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 5702
    .local v7, childIndex:I
    if-ltz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_12

    .line 5703
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5714
    .end local v7           #childIndex:I
    :cond_12
    :goto_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 5716
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5719
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 5620
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v15           #footerViewsStart:I
    .end local v16           #headerViewsCount:I
    .end local v18           #i:I
    .end local v19           #inTouchMode:Z
    .end local v25           #start:I
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 5643
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v15       #footerViewsStart:I
    .restart local v16       #headerViewsCount:I
    .restart local v18       #i:I
    .restart local v19       #inTouchMode:Z
    .restart local v25       #start:I
    .restart local v26       #top:I
    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 5644
    add-int v22, v13, v18

    .line 5645
    .local v22, position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_15

    move/from16 v0, v22

    if-ge v0, v15, :cond_15

    .line 5646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5638
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 5656
    .end local v5           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v22           #position:I
    .end local v26           #top:I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    sub-int v4, v27, p2

    .line 5657
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 5658
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v4, v4, v27

    .line 5660
    :cond_17
    add-int/lit8 v18, v6, -0x1

    .restart local v18       #i:I
    :goto_8
    if-ltz v18, :cond_d

    .line 5661
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5662
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v4, :cond_d

    .line 5665
    move/from16 v25, v18

    .line 5666
    add-int/lit8 v8, v8, 0x1

    .line 5667
    add-int v22, v13, v18

    .line 5668
    .restart local v22       #position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_18

    move/from16 v0, v22

    if-ge v0, v15, :cond_18

    .line 5669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5660
    :cond_18
    add-int/lit8 v18, v18, -0x1

    goto :goto_8

    .line 5705
    .end local v4           #bottom:I
    .end local v5           #child:Landroid/view/View;
    .end local v22           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    .line 5706
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 5707
    .restart local v7       #childIndex:I
    if-ltz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_12

    .line 5708
    const/16 v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_7

    .line 5711
    .end local v7           #childIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_7
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Landroid/widget/AbsListView;->unregisterMotionListener()V

    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 879
    return-void
.end method

.method public unregisterTiltMotion()V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2287
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2290
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2293
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2294
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2295
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2296
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2300
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2303
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2305
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 2308
    .local v3, count:I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2311
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2312
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2313
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2316
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2318
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2290
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2296
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2300
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 2308
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2313
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2316
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2663
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2664
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2670
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2717
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchPadding(II)V
    .locals 0
    .parameter "paddingLeft"
    .parameter "paddingRight"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I

    iput p2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I

    return-void
.end method

.method private isOutOfTouchRange(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
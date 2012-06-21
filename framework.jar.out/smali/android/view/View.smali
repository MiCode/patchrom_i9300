.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Drawable$Callback2;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field static final ACTIVATED:I = 0x40000000

.field public static ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field protected static DEFAULT_TEXT_DIRECTION:I = 0x0

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAG_CAN_ACCEPT:I = 0x1

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_HOVERED:I = 0x2

.field static final DRAG_MASK:I = 0x3

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field private static final HOVERED:I = 0x10000000

.field static final INVALIDATED:I = -0x80000000

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = -0x80000000

.field private static final LAYOUT_DIRECTION_FLAGS:[I = null

.field public static final LAYOUT_DIRECTION_INHERIT:I = -0x80000000

.field public static final LAYOUT_DIRECTION_LOCALE:I = -0x40000000

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_MASK:I = -0x40000000

.field static final LAYOUT_DIRECTION_RESOLVED:I = 0x8

.field static final LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x4

.field public static final LAYOUT_DIRECTION_RTL:I = 0x40000000

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field private static final NONZERO_EPSILON:F = 0.0010f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field private static final PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x21bf

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0xffff

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field public static ROTATION:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static ROTATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static ROTATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field public static SCALE_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static SCALE_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CAPTURE:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NAVIGATION:I = 0x7200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_DISABLE_TRAY:I = 0x4000000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x3

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_REMOVE_NAVIGATION:I = 0x4

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static TRANSLATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static TRANSLATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final VELOCITY_TYPE_MONOMIAL:I = 0x1

.field public static final VELOCITY_TYPE_POLONOMIAL:I = 0x0

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I = null

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I = null

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextAccessibilityViewId:I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isPenSideButton:Z

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDisablePenGestureforfactorytest:Z

.field mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mEnablePenGesture:Z

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mIsSetContextMenuZOrderToTop:Z

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mPrivateFlags2:I

.field mRecreateDisplayList:Z

.field private mResolvedTextDirection:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field private mSoundEffect:I

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "SYSTEM_UI_FLAG_REMOVE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0xffff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field private mTextDirection:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation
        }
    .end annotation
.end field

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRelative:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 704
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 854
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1002
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    sput-object v9, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    .line 1369
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1383
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 1384
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1387
    :cond_0
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1388
    .local v4, orderedIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 1389
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1390
    .local v8, viewState:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 1391
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    .line 1392
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1393
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1390
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1388
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    .end local v2           #j:I
    .end local v8           #viewState:I
    :cond_3
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1398
    .local v0, NUM_BITS:I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1399
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 1400
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1401
    .local v3, numBits:I
    new-array v7, v3, [I

    .line 1402
    .local v7, set:[I
    const/4 v5, 0x0

    .line 1403
    .local v5, pos:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    .line 1404
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    .line 1405
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .local v6, pos:I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1403
    .end local v6           #pos:I
    .restart local v5       #pos:I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1408
    :cond_5
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1411
    .end local v2           #j:I
    .end local v3           #numBits:I
    .end local v5           #pos:I
    .end local v7           #set:[I
    :cond_6
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1412
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1413
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1414
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1416
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1417
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1419
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1421
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1424
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1425
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1427
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1429
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1432
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1434
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1437
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1440
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1444
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1445
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1447
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1449
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1452
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1454
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1457
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1460
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1463
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1465
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1468
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1471
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1474
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1477
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1480
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1483
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1508
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 2704
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    .line 14011
    new-instance v9, Landroid/view/View$4;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 14027
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 14043
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 14059
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->X:Landroid/util/Property;

    .line 14075
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    .line 14091
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 14107
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 14123
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 14139
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 14155
    new-instance v9, Landroid/view/View$13;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$13;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-void

    .line 704
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 854
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1002
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0xc0t
    .end array-data

    .line 1369
    :array_3
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x1t 0x1t
        0x2t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x1t 0x1t
        0x4t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x1t 0x1t
        0x8t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x1t 0x1t
        0x10t 0x0t 0x0t 0x0t
        0xfet 0x2t 0x1t 0x1t
        0x20t 0x0t 0x0t 0x0t
        0x1bt 0x3t 0x1t 0x1t
        0x40t 0x0t 0x0t 0x0t
        0x67t 0x3t 0x1t 0x1t
        0x80t 0x0t 0x0t 0x0t
        0x68t 0x3t 0x1t 0x1t
        0x0t 0x1t 0x0t 0x0t
        0x69t 0x3t 0x1t 0x1t
        0x0t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 3220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1549
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1558
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1564
    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 2367
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 2371
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 2443
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 2461
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2467
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2473
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2479
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 2485
    iput v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 2488
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 2520
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 2526
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2541
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2641
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 2711
    sget v0, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    iput v0, p0, Landroid/view/View;->mTextDirection:I

    .line 2728
    iput v2, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 2741
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2755
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 2756
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 2757
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    .line 3599
    iput v2, p0, Landroid/view/View;->mSoundEffect:I

    .line 15212
    iput-boolean v2, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 3221
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3222
    return-void

    :cond_0
    move-object v0, v1

    .line 2741
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v0, -0x8000

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2766
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1549
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1558
    iput v3, p0, Landroid/view/View;->mID:I

    .line 1564
    iput v3, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 2367
    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 2371
    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 2443
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 2461
    iput v3, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2467
    iput v3, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2473
    iput v3, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2479
    iput v3, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 2485
    iput v3, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 2488
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 2520
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 2526
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2541
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2641
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 2711
    sget v0, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    iput v0, p0, Landroid/view/View;->mTextDirection:I

    .line 2728
    iput v2, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 2741
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2755
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 2756
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 2757
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    .line 3599
    iput v2, p0, Landroid/view/View;->mSoundEffect:I

    .line 15212
    iput-boolean v2, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 2767
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2768
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 2769
    const/high16 v0, -0x6800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 2770
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 2771
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2772
    iput v3, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 2773
    iput v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 2774
    iput-boolean v2, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 2775
    return-void

    :cond_1
    move-object v0, v1

    .line 2741
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2794
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2795
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 40
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2816
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2818
    sget-object v38, Lcom/android/internal/R$styleable;->View:[I

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move/from16 v3, p3

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2821
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 2823
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/16 v16, -0x1

    .line 2824
    .local v16, leftPadding:I
    const/16 v29, -0x1

    .line 2825
    .local v29, topPadding:I
    const/16 v19, -0x1

    .line 2826
    .local v19, rightPadding:I
    const/4 v9, -0x1

    .line 2827
    .local v9, bottomPadding:I
    const/16 v26, -0x1

    .line 2828
    .local v26, startPadding:I
    const/4 v11, -0x1

    .line 2830
    .local v11, endPadding:I
    const/16 v18, -0x1

    .line 2832
    .local v18, padding:I
    const/16 v34, 0x0

    .line 2833
    .local v34, viewFlagValues:I
    const/16 v33, 0x0

    .line 2835
    .local v33, viewFlagMasks:I
    const/16 v25, 0x0

    .line 2837
    .local v25, setScrollContainer:Z
    const/16 v36, 0x0

    .line 2838
    .local v36, x:I
    const/16 v37, 0x0

    .line 2840
    .local v37, y:I
    const/16 v31, 0x0

    .line 2841
    .local v31, tx:F
    const/16 v32, 0x0

    .line 2842
    .local v32, ty:F
    const/16 v20, 0x0

    .line 2843
    .local v20, rotation:F
    const/16 v21, 0x0

    .line 2844
    .local v21, rotationX:F
    const/16 v22, 0x0

    .line 2845
    .local v22, rotationY:F
    const/high16 v27, 0x3f80

    .line 2846
    .local v27, sx:F
    const/high16 v28, 0x3f80

    .line 2847
    .local v28, sy:F
    const/16 v30, 0x0

    .line 2849
    .local v30, transformSet:Z
    const/16 v23, 0x0

    .line 2851
    .local v23, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v17, v0

    .line 2852
    .local v17, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 2853
    .local v5, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v5, :cond_3

    .line 2854
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 2855
    .local v7, attr:I
    packed-switch v7, :pswitch_data_0

    .line 2853
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2857
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2858
    goto :goto_1

    .line 2860
    :pswitch_2
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 2861
    goto :goto_1

    .line 2863
    :pswitch_3
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 2864
    goto :goto_1

    .line 2866
    :pswitch_4
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v29

    .line 2867
    goto :goto_1

    .line 2869
    :pswitch_5
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 2870
    goto :goto_1

    .line 2872
    :pswitch_6
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 2873
    goto :goto_1

    .line 2875
    :pswitch_7
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 2876
    goto :goto_1

    .line 2878
    :pswitch_8
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 2879
    goto :goto_1

    .line 2881
    :pswitch_9
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v36

    .line 2882
    goto :goto_1

    .line 2884
    :pswitch_a
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v37

    .line 2885
    goto :goto_1

    .line 2887
    :pswitch_b
    const/high16 v38, 0x3f80

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 2890
    :pswitch_c
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 2893
    :pswitch_d
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    .line 2896
    :pswitch_e
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v31, v0

    .line 2897
    const/16 v30, 0x1

    .line 2898
    goto/16 :goto_1

    .line 2900
    :pswitch_f
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v32, v0

    .line 2901
    const/16 v30, 0x1

    .line 2902
    goto/16 :goto_1

    .line 2904
    :pswitch_10
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 2905
    const/16 v30, 0x1

    .line 2906
    goto/16 :goto_1

    .line 2908
    :pswitch_11
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .line 2909
    const/16 v30, 0x1

    .line 2910
    goto/16 :goto_1

    .line 2912
    :pswitch_12
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 2913
    const/16 v30, 0x1

    .line 2914
    goto/16 :goto_1

    .line 2916
    :pswitch_13
    const/high16 v38, 0x3f80

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 2917
    const/16 v30, 0x1

    .line 2918
    goto/16 :goto_1

    .line 2920
    :pswitch_14
    const/high16 v38, 0x3f80

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 2921
    const/16 v30, 0x1

    .line 2922
    goto/16 :goto_1

    .line 2924
    :pswitch_15
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_1

    .line 2927
    :pswitch_16
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2930
    :pswitch_17
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2931
    or-int/lit8 v34, v34, 0x2

    .line 2932
    or-int/lit8 v33, v33, 0x2

    goto/16 :goto_1

    .line 2936
    :pswitch_18
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2937
    or-int/lit8 v34, v34, 0x1

    .line 2938
    or-int/lit8 v33, v33, 0x1

    goto/16 :goto_1

    .line 2942
    :pswitch_19
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2943
    const v38, 0x40001

    or-int v34, v34, v38

    .line 2944
    const v38, 0x40001

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 2948
    :pswitch_1a
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2949
    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x4000

    move/from16 v34, v0

    .line 2950
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x4000

    move/from16 v33, v0

    goto/16 :goto_1

    .line 2954
    :pswitch_1b
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2955
    const/high16 v38, 0x20

    or-int v34, v34, v38

    .line 2956
    const/high16 v38, 0x20

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 2960
    :pswitch_1c
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_0

    .line 2961
    const/high16 v38, 0x1

    or-int v34, v34, v38

    .line 2962
    const/high16 v38, 0x1

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 2966
    :pswitch_1d
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2967
    const/high16 v38, 0x40

    or-int v34, v34, v38

    .line 2968
    const/high16 v38, 0x40

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 2972
    :pswitch_1e
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v35

    .line 2973
    .local v35, visibility:I
    if-eqz v35, :cond_0

    .line 2974
    sget-object v38, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v38, v38, v35

    or-int v34, v34, v38

    .line 2975
    or-int/lit8 v33, v33, 0xc

    goto/16 :goto_1

    .line 2980
    .end local v35           #visibility:I
    :pswitch_1f
    const v38, 0x3fffffff

    and-int v34, v34, v38

    .line 2982
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 2983
    .local v15, layoutDirection:I
    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v15, v0, :cond_1

    .line 2984
    sget-object v38, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v38, v38, v15

    or-int v34, v34, v38

    .line 2989
    :goto_2
    const/high16 v38, -0x4000

    or-int v33, v33, v38

    .line 2990
    goto/16 :goto_1

    .line 2987
    :cond_1
    const/high16 v38, -0x8000

    or-int v34, v34, v38

    goto :goto_2

    .line 2992
    .end local v15           #layoutDirection:I
    :pswitch_20
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2993
    .local v10, cacheQuality:I
    if-eqz v10, :cond_0

    .line 2994
    sget-object v38, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v38, v38, v10

    or-int v34, v34, v38

    .line 2995
    const/high16 v38, 0x18

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 2999
    .end local v10           #cacheQuality:I
    :pswitch_21
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 3002
    :pswitch_22
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_0

    .line 3003
    const v38, -0x8000001

    and-int v34, v34, v38

    .line 3004
    const/high16 v38, 0x800

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 3008
    :pswitch_23
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_0

    .line 3009
    const v38, -0x10000001

    and-int v34, v34, v38

    .line 3010
    const/high16 v38, 0x1000

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 3014
    :pswitch_24
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 3015
    .local v24, scrollbars:I
    if-eqz v24, :cond_0

    .line 3016
    or-int v34, v34, v24

    .line 3017
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x300

    move/from16 v33, v0

    .line 3018
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3023
    .end local v24           #scrollbars:I
    :pswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    const/16 v39, 0xe

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_0

    .line 3029
    :pswitch_26
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 3030
    .local v12, fadingEdge:I
    if-eqz v12, :cond_0

    .line 3031
    or-int v34, v34, v12

    .line 3032
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x3000

    move/from16 v33, v0

    .line 3033
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3037
    .end local v12           #fadingEdge:I
    :pswitch_27
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 3038
    if-eqz v23, :cond_0

    .line 3039
    const/high16 v38, 0x300

    and-int v38, v38, v23

    or-int v34, v34, v38

    .line 3040
    const/high16 v38, 0x300

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 3044
    :pswitch_28
    const/16 v25, 0x1

    .line 3045
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 3046
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 3050
    :pswitch_29
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 3051
    const/high16 v38, 0x400

    or-int v34, v34, v38

    .line 3052
    const/high16 v38, 0x400

    or-int v33, v33, v38

    goto/16 :goto_1

    .line 3056
    :pswitch_2a
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 3057
    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x400

    move/from16 v34, v0

    .line 3058
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    goto/16 :goto_1

    .line 3062
    :pswitch_2b
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    .line 3065
    :pswitch_2c
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    .line 3068
    :pswitch_2d
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    .line 3071
    :pswitch_2e
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    .line 3074
    :pswitch_2f
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_1

    .line 3077
    :pswitch_30
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    .line 3080
    :pswitch_31
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    .line 3083
    :pswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v38

    if-eqz v38, :cond_2

    .line 3084
    new-instance v38, Ljava/lang/IllegalStateException;

    const-string v39, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 3088
    :cond_2
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3089
    .local v13, handlerName:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 3090
    new-instance v38, Landroid/view/View$1;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3124
    .end local v13           #handlerName:Ljava/lang/String;
    :pswitch_33
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 3125
    goto/16 :goto_1

    .line 3127
    :pswitch_34
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_1

    .line 3130
    :pswitch_35
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 3133
    :pswitch_36
    sget v38, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mTextDirection:I

    goto/16 :goto_1

    .line 3138
    .end local v7           #attr:I
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3140
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3142
    if-eqz v8, :cond_4

    .line 3143
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3146
    :cond_4
    if-gez v26, :cond_5

    if-ltz v11, :cond_d

    :cond_5
    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mUserPaddingRelative:Z

    .line 3150
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    .line 3151
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3153
    if-ltz v18, :cond_6

    .line 3154
    move/from16 v16, v18

    .line 3155
    move/from16 v29, v18

    .line 3156
    move/from16 v19, v18

    .line 3157
    move/from16 v9, v18

    .line 3164
    :cond_6
    if-ltz v16, :cond_e

    .end local v16           #leftPadding:I
    :goto_4
    if-ltz v29, :cond_f

    .end local v29           #topPadding:I
    :goto_5
    if-ltz v19, :cond_10

    .end local v19           #rightPadding:I
    :goto_6
    if-ltz v9, :cond_11

    .end local v9           #bottomPadding:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 3169
    if-eqz v33, :cond_7

    .line 3170
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 3174
    :cond_7
    if-eqz v23, :cond_8

    .line 3175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 3178
    :cond_8
    if-nez v36, :cond_9

    if-eqz v37, :cond_a

    .line 3179
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 3182
    :cond_a
    if-eqz v30, :cond_b

    .line 3183
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3184
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3185
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 3186
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 3187
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 3188
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3189
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3192
    :cond_b
    if-nez v25, :cond_c

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0x200

    move/from16 v38, v0

    if-eqz v38, :cond_c

    .line 3193
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 3196
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3199
    const-string v38, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/media/AudioManager;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 3211
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mEnablePenGesture:Z

    .line 3215
    return-void

    .line 3146
    .restart local v9       #bottomPadding:I
    .restart local v16       #leftPadding:I
    .restart local v19       #rightPadding:I
    .restart local v29       #topPadding:I
    :cond_d
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 3164
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v16, v0

    goto/16 :goto_4

    .end local v16           #leftPadding:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v29, v0

    goto/16 :goto_5

    .end local v29           #topPadding:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v19, v0

    goto/16 :goto_6

    .end local v19           #rightPadding:I
    :cond_11
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_7

    .line 2855
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_27
        :pswitch_15
        :pswitch_16
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_1e
        :pswitch_17
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_1d
        :pswitch_30
        :pswitch_31
        :pswitch_22
        :pswitch_29
        :pswitch_28
        :pswitch_23
        :pswitch_32
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_2a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_34
        :pswitch_2f
        :pswitch_35
        :pswitch_26
        :pswitch_7
        :pswitch_8
        :pswitch_1f
        :pswitch_36
    .end packed-switch
.end method

.method static synthetic access$2002(Landroid/view/View;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method private checkForLongClick(I)V
    .locals 3
    .parameter "delayOffset"

    .prologue
    const/high16 v1, 0x20

    .line 13739
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 13740
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 13742
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 13743
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 13745
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 13746
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13749
    :cond_1
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .parameter "curState"
    .parameter "newState"

    .prologue
    .line 13008
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 12826
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12827
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 12828
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12830
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5812
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5813
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5826
    :cond_0
    :goto_0
    return v1

    .line 5819
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5823
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2

    .line 5824
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2
    move v1, v2

    .line 5826
    goto :goto_0
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 5295
    new-instance v1, Landroid/view/View$3;

    invoke-direct {v1, p0, p2}, Landroid/view/View$3;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 5302
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_0

    .line 5303
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5306
    :cond_0
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 13064
    move v0, p0

    .line 13065
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 13066
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 13068
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 13077
    :goto_0
    return v0

    .line 13070
    :sswitch_0
    move v0, p0

    .line 13071
    goto :goto_0

    .line 13074
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 13068
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 4

    .prologue
    .line 5541
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5542
    .local v0, ancestor:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 5543
    check-cast v1, Landroid/view/ViewGroup;

    .line 5544
    .local v1, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 5545
    const/4 v2, 0x1

    .line 5550
    .end local v1           #vgAncestor:Landroid/view/ViewGroup;
    :goto_1
    return v2

    .line 5547
    .restart local v1       #vgAncestor:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5549
    goto :goto_0

    .line 5550
    .end local v1           #vgAncestor:Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 13762
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 13763
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    .line 3421
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 3422
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3424
    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8479
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHoverable()Z
    .locals 5

    .prologue
    const/high16 v4, 0x20

    const/4 v1, 0x0

    .line 6545
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 6547
    .local v0, viewFlags:I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 6551
    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isLayoutDirectionRtl(Ljava/util/Locale;)Z
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x1

    .line 9871
    invoke-static {p0}, Landroid/util/LocaleUtil;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 11838
    array-length v0, p0

    .line 11839
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .line 11840
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    .line 11841
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11843
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11844
    return-object p0
.end method

.method private static nonzero(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 7244
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointInView(FFF)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"
    .parameter "slop"

    .prologue
    .line 8223
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .locals 3

    .prologue
    .line 9074
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_0

    .line 9075
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 9077
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 9078
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 9079
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9082
    :cond_1
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 4
    .parameter "flags"

    .prologue
    .line 11339
    const-string v1, ""

    .line 11340
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 11341
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 11342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11343
    add-int/lit8 v0, v0, 0x1

    .line 11346
    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    .line 11364
    :goto_0
    return-object v1

    .line 11348
    :sswitch_0
    if-lez v0, :cond_1

    .line 11349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11351
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11353
    goto :goto_0

    .line 11355
    :sswitch_1
    if-lez v0, :cond_2

    .line 11356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11358
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11360
    goto :goto_0

    .line 11346
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 4
    .parameter "privateFlags"

    .prologue
    .line 11375
    const-string v1, ""

    .line 11376
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 11378
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 11379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11380
    add-int/lit8 v0, v0, 0x1

    .line 11383
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 11384
    if-lez v0, :cond_1

    .line 11385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11387
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11388
    add-int/lit8 v0, v0, 0x1

    .line 11391
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 11392
    if-lez v0, :cond_3

    .line 11393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11395
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11396
    add-int/lit8 v0, v0, 0x1

    .line 11399
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 11400
    if-lez v0, :cond_5

    .line 11401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11403
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11404
    add-int/lit8 v0, v0, 0x1

    .line 11407
    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 11408
    if-lez v0, :cond_7

    .line 11409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11411
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11412
    add-int/lit8 v0, v0, 0x1

    .line 11415
    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    .line 11416
    if-lez v0, :cond_9

    .line 11417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11419
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11422
    :cond_a
    return-object v1
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 6770
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 6771
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6773
    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 1

    .prologue
    .line 6779
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_0

    .line 6780
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6782
    :cond_0
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .locals 1

    .prologue
    .line 6826
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 6827
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6829
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 6798
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 6799
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6800
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6802
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    .line 6788
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    .line 6789
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6790
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6792
    :cond_0
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 4430
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 4441
    :cond_0
    :goto_0
    return-void

    .line 4434
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4437
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 4438
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method private resolveLayoutDirectionIfNeeded()V
    .locals 3

    .prologue
    .line 9744
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 9786
    :cond_0
    :goto_0
    return-void

    .line 9747
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 9751
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 9754
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 9785
    :cond_2
    :goto_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 9757
    :sswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 9760
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 9761
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    .line 9764
    .local v0, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9767
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResolvedLayoutDirection()I

    move-result v1

    const/high16 v2, 0x4000

    if-ne v1, v2, :cond_2

    .line 9768
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 9773
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :sswitch_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 9776
    :sswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/view/View;->isLayoutDirectionRtl(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9777
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 9754
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        -0x40000000 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static resolveSize(II)I
    .locals 2
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 13016
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 13033
    move v0, p0

    .line 13034
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 13035
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 13036
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 13051
    :goto_0
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 13038
    :sswitch_0
    move v0, p0

    .line 13039
    goto :goto_0

    .line 13041
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 13042
    const/high16 v3, 0x100

    or-int v0, v2, v3

    goto :goto_0

    .line 13044
    :cond_0
    move v0, p0

    .line 13046
    goto :goto_0

    .line 13048
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 13036
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 12678
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 12679
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 12682
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12683
    return-void
.end method

.method private skipInvalidate()Z
    .locals 1

    .prologue
    .line 8608
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMatrix()V
    .locals 6

    .prologue
    const/high16 v3, 0x4000

    .line 7271
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7272
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-nez v0, :cond_1

    .line 7312
    :cond_0
    :goto_0
    return-void

    .line 7275
    :cond_1
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 7280
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 7281
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    #getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    #getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 7282
    :cond_2
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    #setter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1302(Landroid/view/View$TransformationInfo;I)I

    .line 7283
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    #setter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1402(Landroid/view/View$TransformationInfo;I)I

    .line 7284
    #getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 7285
    #getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 7288
    :cond_3
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 7289
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7290
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7291
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 7292
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 7308
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7309
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    #setter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1202(Landroid/view/View$TransformationInfo;Z)Z

    .line 7310
    const/4 v1, 0x1

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    goto/16 :goto_0

    .line 7294
    :cond_4
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_5

    .line 7295
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 7296
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7298
    :cond_5
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 7299
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 7300
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 7301
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7302
    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7303
    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7305
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 7306
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_1
.end method


# virtual methods
.method public CheckStatusBarHide()Z
    .locals 2

    .prologue
    .line 15239
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 15240
    .local v1, viewroot:Landroid/view/ViewRootImpl;
    const/4 v0, 0x0

    .line 15241
    .local v0, canstatusBarHide:Z
    if-eqz v1, :cond_0

    .line 15243
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getCanStatusBarHide()Z

    move-result v0

    .line 15246
    :cond_0
    return v0
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5331
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 5332
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 5350
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5362
    :cond_0
    :goto_0
    return-void

    .line 5354
    :cond_1
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5359
    :cond_2
    if-eqz p1, :cond_0

    .line 5360
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 3506
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 3507
    .local v0, li:Landroid/view/View$ListenerInfo;
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3508
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3511
    :cond_0
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3512
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 3473
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 3474
    .local v0, li:Landroid/view/View$ListenerInfo;
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3477
    :cond_0
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3478
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3480
    :cond_1
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
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
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 5409
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5411
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    .line 5413
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5415
    :cond_1
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 14329
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 14330
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 14332
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 15
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 13707
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 13708
    .local v1, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 13709
    .local v13, db:Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13710
    .local v12, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    if-eqz v12, :cond_4

    .line 13711
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 13712
    .local v9, w:I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 13713
    .local v5, h:I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_0

    .line 13715
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13717
    :cond_0
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_1

    .line 13719
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13721
    :cond_1
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    .line 13723
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13725
    :cond_2
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_3

    .line 13727
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13729
    :cond_3
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 13730
    .local v14, location:[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13731
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 13732
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 13736
    .end local v5           #h:I
    .end local v9           #w:I
    .end local v14           #location:[I
    :goto_0
    return-void

    .line 13734
    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 9699
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 9700
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 9707
    :goto_0
    return-void

    .line 9701
    :cond_0
    if-nez p1, :cond_1

    .line 9702
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 9704
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8466
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .parameter "startDelay"

    .prologue
    .line 8518
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 10
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 8560
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 8562
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_1

    .line 8600
    :cond_0
    :goto_0
    return v4

    .line 8566
    :cond_1
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_2

    .line 8567
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 8570
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8572
    :cond_3
    if-eqz p2, :cond_4

    .line 8574
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 8577
    :cond_4
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    .line 8581
    const/16 v0, 0x2ee

    .line 8582
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8587
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v1, v6, v8

    .line 8588
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 8589
    iput v5, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 8592
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    .line 8593
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8594
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v5

    .line 8597
    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 6997
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6998
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 7000
    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    .line 10724
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 10725
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 17
    .parameter "autoScale"

    .prologue
    .line 10751
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    and-int v15, v15, v16

    if-eqz v15, :cond_0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_4

    .line 10753
    :cond_0
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 10759
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 10760
    .local v14, width:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 10762
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10763
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v15, :cond_6

    const/4 v12, 0x1

    .line 10765
    .local v12, scalingRequired:Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v12, :cond_1

    .line 10766
    int-to-float v15, v14

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v14, v15

    .line 10767
    int-to-float v15, v7

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v7, v15

    .line 10770
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 10771
    .local v5, drawingCacheBackgroundColor:I
    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_2
    const/4 v8, 0x1

    .line 10772
    .local v8, opaque:Z
    :goto_2
    if-eqz v1, :cond_8

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    if-eqz v15, :cond_8

    const/4 v13, 0x1

    .line 10774
    .local v13, use32BitCache:Z
    :goto_3
    if-lez v14, :cond_3

    if-lez v7, :cond_3

    mul-int v16, v14, v7

    if-eqz v8, :cond_9

    if-nez v13, :cond_9

    const/4 v15, 0x2

    :goto_4
    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 10778
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 10779
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 10895
    .end local v1           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v5           #drawingCacheBackgroundColor:I
    .end local v7           #height:I
    .end local v8           #opaque:Z
    .end local v12           #scalingRequired:Z
    .end local v13           #use32BitCache:Z
    .end local v14           #width:I
    :cond_4
    :goto_5
    return-void

    .line 10751
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_4

    goto/16 :goto_0

    .line 10763
    .restart local v1       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v7       #height:I
    .restart local v14       #width:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 10771
    .restart local v5       #drawingCacheBackgroundColor:I
    .restart local v12       #scalingRequired:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 10772
    .restart local v8       #opaque:Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 10774
    .restart local v13       #use32BitCache:Z
    :cond_9
    const/4 v15, 0x4

    goto :goto_4

    .line 10783
    :cond_a
    const/4 v4, 0x1

    .line 10784
    .local v4, clear:Z
    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10786
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ne v15, v14, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-eq v15, v7, :cond_e

    .line 10788
    :cond_b
    if-nez v8, :cond_15

    .line 10791
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v16, 0x18

    and-int v15, v15, v16

    sparse-switch v15, :sswitch_data_0

    .line 10802
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10812
    .local v9, quality:Landroid/graphics/Bitmap$Config;
    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 10815
    :cond_c
    :try_start_0
    invoke-static {v14, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 10816
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 10817
    if-eqz p1, :cond_17

    .line 10818
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10822
    :goto_8
    if-eqz v8, :cond_d

    if-eqz v13, :cond_d

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10836
    :cond_d
    if-eqz v5, :cond_19

    const/4 v4, 0x1

    .line 10840
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_e
    :goto_9
    if-eqz v1, :cond_1a

    .line 10841
    iget-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10842
    .local v3, canvas:Landroid/graphics/Canvas;
    if-nez v3, :cond_f

    .line 10843
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 10845
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    :cond_f
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10850
    const/4 v15, 0x0

    iput-object v15, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10856
    :goto_a
    if-eqz v4, :cond_10

    .line 10857
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 10860
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 10861
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 10863
    .local v10, restoreCount:I
    if-eqz p1, :cond_11

    if-eqz v12, :cond_11

    .line 10864
    iget v11, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 10865
    .local v11, scale:F
    invoke-virtual {v3, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10868
    .end local v11           #scale:F
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    neg-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10870
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v15, v15, 0x20

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10871
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v15, v15, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mLayerType:I

    if-eqz v15, :cond_13

    .line 10873
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10877
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 10881
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, -0x600001

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10882
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10887
    :goto_b
    invoke-virtual {v3, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10888
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10890
    if-eqz v1, :cond_4

    .line 10892
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 10784
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v10           #restoreCount:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 10793
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10794
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 10796
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10797
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 10799
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_2
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10800
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 10808
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_15
    if-eqz v13, :cond_16

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    :goto_c
    goto/16 :goto_7

    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_16
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_c

    .line 10820
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 10823
    :catch_0
    move-exception v6

    .line 10827
    .local v6, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_18

    .line 10828
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10832
    :goto_d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_5

    .line 10830
    :cond_18
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 10836
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 10853
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_1a
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v3       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_a

    .line 10884
    .restart local v10       #restoreCount:I
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 10791
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_2
    .end sparse-switch
.end method

.method public buildLayer()V
    .locals 2

    .prologue
    .line 10324
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_1

    .line 10342
    :cond_0
    :goto_0
    return-void

    .line 10326
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_2

    .line 10327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view must be attached to a window first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10330
    :cond_2
    iget v0, p0, Landroid/view/View;->mLayerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10339
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_0

    .line 10332
    :pswitch_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10335
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    goto :goto_0

    .line 10330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callOnClick()Z
    .locals 2

    .prologue
    .line 3660
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3661
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 3662
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3663
    const/4 v1, 0x1

    .line 3665
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canAcceptDrag()Z
    .locals 1

    .prologue
    .line 13677
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canHaveDisplayList()Z
    .locals 1

    .prologue
    .line 10544
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canResolveLayoutDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9840
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 9844
    :cond_0
    :goto_0
    return v0

    .line 9842
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9840
    nop

    :pswitch_data_0
    .packed-switch -0x80000000
        :pswitch_0
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9489
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 9490
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 9491
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 9495
    :cond_0
    :goto_0
    return v2

    .line 9492
    :cond_1
    if-gez p1, :cond_2

    .line 9493
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 9495
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9506
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 9507
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 9508
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 9512
    :cond_0
    :goto_0
    return v2

    .line 9509
    :cond_1
    if-gez p1, :cond_2

    .line 9510
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 9512
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    .line 6811
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6818
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 6819
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 6342
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 13176
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 13177
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 13179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 13180
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 13181
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3880
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3881
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3883
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3884
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 3887
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3888
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3890
    :cond_1
    return-void
.end method

.method clearFocusForRemoval()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3898
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3899
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3901
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3902
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3904
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 9418
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 9397
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 9376
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .locals 3

    .prologue
    .line 8858
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 8859
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8864
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8865
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 8867
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8871
    :goto_1
    return-void

    .line 8861
    .end local v0           #flags:I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 8869
    .restart local v0       #flags:I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 9091
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 9479
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 9458
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 9437
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 4249
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4250
    .local v0, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4251
    return-object v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 6356
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 6360
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 6362
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 6363
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 6364
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 6365
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v2, p1

    .line 6370
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 6372
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 6373
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 6375
    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 10902
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .line 10903
    .local v8, width:I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .line 10905
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10906
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 10907
    .local v7, scale:F
    :goto_0
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 10908
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 10910
    if-lez v8, :cond_1

    .end local v8           #width:I
    :goto_1
    if-lez v4, :cond_2

    .end local v4           #height:I
    :goto_2
    invoke-static {v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10911
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 10912
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 10906
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    .restart local v4       #height:I
    .restart local v8       #width:I
    :cond_0
    const/high16 v7, 0x3f80

    goto :goto_0

    .line 10910
    .restart local v7       #scale:F
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .end local v8           #width:I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 10915
    .end local v4           #height:I
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 10916
    .local v5, resources:Landroid/content/res/Resources;
    if-eqz v5, :cond_4

    .line 10917
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 10921
    :cond_4
    if-eqz v0, :cond_8

    .line 10922
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10923
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_5

    .line 10924
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 10926
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_5
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10931
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10937
    :goto_3
    const/high16 v9, -0x100

    and-int/2addr v9, p2

    if-eqz v9, :cond_6

    .line 10938
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 10941
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 10942
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 10943
    .local v6, restoreCount:I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10944
    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10947
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10948
    .local v3, flags:I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10951
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_9

    .line 10952
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10957
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10959
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10960
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10962
    if-eqz v0, :cond_7

    .line 10964
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10967
    :cond_7
    return-object v1

    .line 10934
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v6           #restoreCount:I
    :cond_8
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_3

    .line 10954
    .restart local v3       #flags:I
    .restart local v6       #restoreCount:I
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 12746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 12747
    return-void
.end method

.method protected debug(I)V
    .locals 5
    .parameter "depth"

    .prologue
    .line 12759
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12761
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12762
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 12763
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 12764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12766
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 12767
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 12768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12770
    :cond_1
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12772
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 12773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12774
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12777
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12781
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12783
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    .line 12785
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12788
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12791
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12794
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12796
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12797
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    .line 12798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12802
    :goto_0
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12804
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12808
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12810
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12814
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12815
    return-void

    .line 12800
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10681
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 10682
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10683
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10685
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 10686
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10687
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 10689
    :cond_1
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 0

    .prologue
    .line 10452
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 10453
    return-void
.end method

.method destroyLayer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10428
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_0

    .line 10429
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    .line 10430
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 10432
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 10433
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 7
    .parameter "info"
    .parameter "visibility"

    .prologue
    const/4 v3, 0x0

    .line 9960
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9961
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 9963
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9964
    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_0

    .line 9965
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 9966
    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 9968
    :cond_0
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x8

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 9969
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9970
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x10

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9972
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 9973
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 9975
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9976
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_2

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 9978
    .local v3, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 9983
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 9984
    .local v2, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 9988
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/view/View$OnAttachStateChangeListener;
    :cond_3
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 9989
    .local v4, vis:I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 9990
    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 9992
    :cond_4
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_5

    .line 9994
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 9996
    :cond_5
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 6119
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 6120
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 6098
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6099
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 1
    .parameter "consistency"

    .prologue
    .line 12691
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 9999
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10000
    .local v1, info:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    .line 10001
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 10002
    .local v5, vis:I
    if-eq v5, v7, :cond_0

    .line 10003
    invoke-virtual {p0, v7}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 10007
    .end local v5           #vis:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 10009
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 10010
    .local v2, li:Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 10012
    .local v4, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 10017
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 10018
    .local v3, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Landroid/view/View$OnAttachStateChangeListener;
    .end local v4           #listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_1
    move-object v4, v6

    .line 10010
    goto :goto_0

    .line 10022
    .restart local v4       #listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x10

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 10023
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10024
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10027
    :cond_3
    iput-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10028
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 5998
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 5999
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 13668
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 13669
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13671
    const/4 v1, 0x1

    .line 13673
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 7068
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 5575
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 5576
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5886
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5780
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 5781
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 5784
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 5785
    .local v1, source:I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_6

    .line 5786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5787
    .local v0, action:I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 5790
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5807
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v2

    .line 5793
    .restart local v0       #action:I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5800
    .end local v0           #action:I
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5804
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_5

    .line 5805
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_5
    move v2, v3

    .line 5807
    goto :goto_0

    .line 5796
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5872
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .prologue
    .line 10533
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 5841
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5842
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5845
    const/4 v1, 0x1

    .line 5848
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5621
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 5622
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 5627
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5628
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 5641
    :goto_0
    return v1

    .line 5633
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 5635
    goto :goto_0

    .line 5633
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5638
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 5639
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    move v1, v3

    .line 5641
    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5607
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5651
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5904
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5906
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4112
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4113
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 4115
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4125
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4126
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10122
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 10123
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 10124
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 10127
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10128
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10129
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 10130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10135
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10055
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 10056
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10057
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 10058
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 10059
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10062
    :cond_0
    if-eqz v0, :cond_1

    .line 10065
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10068
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .locals 0
    .parameter "activated"

    .prologue
    .line 12263
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 5088
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 12221
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 5557
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5558
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 13394
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 13395
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13396
    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 13399
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5663
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroid/view/View;->mEnablePenGesture:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    if-nez v4, :cond_0

    .line 5664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5665
    .local v0, action:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 5667
    packed-switch v0, :pswitch_data_0

    .line 5712
    .end local v0           #action:I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_1

    .line 5713
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 5716
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5718
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5719
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_4

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_4

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-interface {v4, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5732
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_2
    :goto_1
    return v2

    .line 5670
    .restart local v0       #action:I
    :pswitch_0
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    goto :goto_1

    .line 5673
    :pswitch_1
    iget-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5682
    :pswitch_2
    iget-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v4, :cond_0

    .line 5684
    iput-boolean v3, p0, Landroid/view/View;->isPenSideButton:Z

    goto :goto_1

    .line 5692
    :cond_3
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5697
    :pswitch_3
    iput-boolean v3, p0, Landroid/view/View;->isPenSideButton:Z

    goto :goto_0

    .line 5700
    :pswitch_4
    iget-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5724
    .end local v0           #action:I
    .restart local v1       #li:Landroid/view/View$ListenerInfo;
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5729
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_5
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_6

    .line 5730
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_6
    move v2, v3

    .line 5732
    goto :goto_1

    .line 5667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5692
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 5760
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 5761
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 5764
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 5253
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 5968
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 5969
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 5918
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 5919
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 6022
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6023
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 39
    .parameter "canvas"

    .prologue
    .line 11120
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    .line 11121
    .local v27, privateFlags:I
    const/high16 v2, 0x60

    and-int v2, v2, v27

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_4

    :cond_0
    const/4 v12, 0x1

    .line 11123
    .local v12, dirtyOpaque:Z
    :goto_0
    const v2, -0x600001

    and-int v2, v2, v27

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11140
    if-nez v12, :cond_2

    .line 11141
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11142
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 11143
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v31, v0

    .line 11144
    .local v31, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 11146
    .local v32, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v2, :cond_1

    .line 11147
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 11151
    :cond_1
    or-int v2, v31, v32

    if-nez v2, :cond_5

    .line 11152
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11162
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v31           #scrollX:I
    .end local v32           #scrollY:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v38, v0

    .line 11163
    .local v38, viewFlags:I
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_6

    const/16 v20, 0x1

    .line 11164
    .local v20, horizontalEdges:Z
    :goto_2
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_7

    const/16 v37, 0x1

    .line 11165
    .local v37, verticalEdges:Z
    :goto_3
    if-nez v37, :cond_8

    if-nez v20, :cond_8

    .line 11167
    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 11170
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 11173
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 11314
    :goto_4
    return-void

    .line 11121
    .end local v12           #dirtyOpaque:Z
    .end local v20           #horizontalEdges:Z
    .end local v37           #verticalEdges:Z
    .end local v38           #viewFlags:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 11154
    .restart local v9       #background:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dirtyOpaque:Z
    .restart local v31       #scrollX:I
    .restart local v32       #scrollY:I
    :cond_5
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11155
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11156
    move/from16 v0, v31

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v32

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 11163
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v31           #scrollX:I
    .end local v32           #scrollY:I
    .restart local v38       #viewFlags:I
    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 11164
    .restart local v20       #horizontalEdges:Z
    :cond_7
    const/16 v37, 0x0

    goto :goto_3

    .line 11186
    .restart local v37       #verticalEdges:Z
    :cond_8
    const/16 v16, 0x0

    .line 11187
    .local v16, drawTop:Z
    const/4 v13, 0x0

    .line 11188
    .local v13, drawBottom:Z
    const/4 v14, 0x0

    .line 11189
    .local v14, drawLeft:Z
    const/4 v15, 0x0

    .line 11191
    .local v15, drawRight:Z
    const/16 v36, 0x0

    .line 11192
    .local v36, topFadeStrength:F
    const/4 v11, 0x0

    .line 11193
    .local v11, bottomFadeStrength:F
    const/16 v22, 0x0

    .line 11194
    .local v22, leftFadeStrength:F
    const/16 v29, 0x0

    .line 11197
    .local v29, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 11199
    .local v26, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v25

    .line 11200
    .local v25, offsetRequired:Z
    if-eqz v25, :cond_9

    .line 11201
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v26, v26, v2

    .line 11204
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v21, v2, v26

    .line 11205
    .local v21, left:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v28, v2, v26

    .line 11206
    .local v28, right:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v35, v2, v3

    .line 11207
    .local v35, top:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v10, v35, v2

    .line 11209
    .local v10, bottom:I
    if-eqz v25, :cond_a

    .line 11210
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v28, v28, v2

    .line 11211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v10, v2

    .line 11214
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v33, v0

    .line 11215
    .local v33, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 11216
    .local v18, fadeHeight:F
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    .line 11220
    .local v23, length:I
    if-eqz v37, :cond_b

    add-int v2, v35, v23

    sub-int v3, v10, v23

    if-le v2, v3, :cond_b

    .line 11221
    sub-int v2, v10, v35

    div-int/lit8 v23, v2, 0x2

    .line 11225
    :cond_b
    if-eqz v20, :cond_c

    add-int v2, v21, v23

    sub-int v3, v28, v23

    if-le v2, v3, :cond_c

    .line 11226
    sub-int v2, v28, v21

    div-int/lit8 v23, v2, 0x2

    .line 11229
    :cond_c
    if-eqz v37, :cond_d

    .line 11230
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 11231
    mul-float v2, v36, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    const/16 v16, 0x1

    .line 11232
    :goto_5
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 11233
    mul-float v2, v11, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    const/4 v13, 0x1

    .line 11236
    :cond_d
    :goto_6
    if-eqz v20, :cond_e

    .line 11237
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 11238
    mul-float v2, v22, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const/4 v14, 0x1

    .line 11239
    :goto_7
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 11240
    mul-float v2, v29, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    const/4 v15, 0x1

    .line 11243
    :cond_e
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v30

    .line 11245
    .local v30, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v34

    .line 11246
    .local v34, solidColor:I
    if-nez v34, :cond_1c

    .line 11247
    const/16 v19, 0x4

    .line 11249
    .local v19, flags:I
    if-eqz v16, :cond_f

    .line 11250
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11253
    :cond_f
    if-eqz v13, :cond_10

    .line 11254
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11257
    :cond_10
    if-eqz v14, :cond_11

    .line 11258
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11261
    :cond_11
    if-eqz v15, :cond_12

    .line 11262
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11269
    .end local v19           #flags:I
    :cond_12
    :goto_9
    if-nez v12, :cond_13

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 11272
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 11275
    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 11276
    .local v7, p:Landroid/graphics/Paint;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    .line 11277
    .local v24, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v17, v0

    .line 11279
    .local v17, fade:Landroid/graphics/Shader;
    if-eqz v16, :cond_14

    .line 11280
    const/high16 v2, 0x3f80

    mul-float v3, v18, v36

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11281
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11282
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11283
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11286
    :cond_14
    if-eqz v13, :cond_15

    .line 11287
    const/high16 v2, 0x3f80

    mul-float v3, v18, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11288
    const/high16 v2, 0x4334

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11289
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v3, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11290
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11291
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11294
    :cond_15
    if-eqz v14, :cond_16

    .line 11295
    const/high16 v2, 0x3f80

    mul-float v3, v18, v22

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11296
    const/high16 v2, -0x3d4c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11297
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11298
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11299
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11302
    :cond_16
    if-eqz v15, :cond_17

    .line 11303
    const/high16 v2, 0x3f80

    mul-float v3, v18, v29

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11304
    const/high16 v2, 0x42b4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11305
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11306
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11307
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11310
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 11313
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 11231
    .end local v7           #p:Landroid/graphics/Paint;
    .end local v17           #fade:Landroid/graphics/Shader;
    .end local v24           #matrix:Landroid/graphics/Matrix;
    .end local v30           #saveCount:I
    .end local v34           #solidColor:I
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 11233
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 11238
    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 11240
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 11265
    .restart local v30       #saveCount:I
    .restart local v34       #solidColor:I
    :cond_1c
    invoke-virtual/range {v33 .. v34}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_9
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 11702
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11703
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11704
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11706
    :cond_0
    return-void
.end method

.method ensureTransformationInfo()V
    .locals 1

    .prologue
    .line 7262
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    .line 7263
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7265
    :cond_0
    return-void
.end method

.method public fastInvalidate()V
    .locals 6

    .prologue
    const v5, 0x8000

    const/4 v4, 0x0

    const/high16 v3, -0x8000

    .line 8774
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8799
    :cond_0
    :goto_0
    return-void

    .line 8777
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_0

    .line 8780
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 8781
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/View;

    iget v2, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/View;->mPrivateFlags:I

    .line 8783
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8784
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8785
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8786
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8787
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 8788
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v1, :cond_4

    .line 8789
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 8791
    :cond_4
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8792
    .local v0, r:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8795
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 4461
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 5265
    sparse-switch p2, :sswitch_data_0

    .line 5291
    :cond_0
    :goto_0
    return-object v1

    .line 5267
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_0

    .line 5268
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 5270
    :sswitch_1
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_0

    .line 5271
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 5273
    :sswitch_2
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_0

    .line 5274
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 5276
    :sswitch_3
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_0

    .line 5277
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 5279
    :sswitch_4
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_0

    .line 5280
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 5282
    :sswitch_5
    iget v0, p0, Landroid/view/View;->mID:I

    .line 5283
    .local v0, id:I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 5265
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .locals 1
    .parameter "accessibilityId"

    .prologue
    .line 12446
    if-gez p1, :cond_0

    .line 12447
    const/4 v0, 0x0

    .line 12449
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "accessibilityId"

    .prologue
    .line 12466
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 12469
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 12433
    if-gez p1, :cond_0

    .line 12434
    const/4 v0, 0x0

    .line 12436
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 12495
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 4
    .parameter "start"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 12515
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 12517
    .local v0, childToSkip:Landroid/view/View;
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 12518
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    if-ne p1, p0, :cond_1

    .line 12524
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 12522
    .restart local v2       #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 12523
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 12524
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 12527
    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 12528
    check-cast p1, Landroid/view/View;

    .line 12529
    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 12419
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12422
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 12394
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    .line 12397
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 12480
    if-nez p1, :cond_0

    .line 12481
    const/4 v0, 0x0

    .line 12483
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 12406
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12409
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter
    .parameter "searched"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 5380
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5382
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 5383
    .local v1, searchedLowerCase:Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 5384
    .local v0, contentDescriptionLowerCase:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5385
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5388
    .end local v0           #contentDescriptionLowerCase:Ljava/lang/String;
    .end local v1           #searchedLowerCase:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "insets"

    .prologue
    .line 4686
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4687
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 4688
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 4689
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 4690
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 4691
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4692
    const/4 v0, 0x1

    .line 4694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fitsSystemWindows()Z
    .locals 2

    .prologue
    .line 4724
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 5234
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5235
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 5237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 2

    .prologue
    .line 12875
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12876
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12877
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 13256
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13257
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 13258
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13259
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    .line 13262
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 13263
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13264
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13273
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_0
    :goto_0
    return v9

    .line 13266
    .restart local v8       #pflags:I
    :cond_1
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 13270
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAccessibilityViewId()I
    .locals 2

    .prologue
    .line 4364
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4365
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 4367
    :cond_0
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .locals 1

    .prologue
    .line 4378
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 7698
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 13157
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 9934
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9935
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 9936
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 9937
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 9938
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 9942
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 11996
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 12843
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7818
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 9188
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 11064
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4393
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 6169
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 6388
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextMenuZOrderToTop()Z
    .locals 1

    .prologue
    .line 15225
    iget-boolean v0, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    return v0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v7, 0x8020

    const v6, -0x600001

    .line 10556
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v5

    if-nez v5, :cond_0

    .line 10619
    :goto_0
    return-object v4

    .line 10560
    :cond_0
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v4, :cond_5

    .line 10565
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v4, :cond_2

    .line 10567
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10568
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10569
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    .line 10571
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    goto :goto_0

    .line 10576
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 10577
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-nez v4, :cond_3

    .line 10578
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->createDisplayList()Landroid/view/DisplayList;

    move-result-object v4

    iput-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 10582
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10585
    :cond_3
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 10586
    .local v0, canvas:Landroid/view/HardwareCanvas;
    const/4 v2, 0x0

    .line 10588
    .local v2, restoreCount:I
    :try_start_0
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v5

    .line 10589
    .local v3, width:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v1, v4, v5

    .line 10591
    .local v1, height:I
    invoke-virtual {v0, v3, v1}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 10593
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 10595
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 10597
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v2

    .line 10598
    iget v4, p0, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 10599
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10600
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10603
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_4

    .line 10604
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10609
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 10610
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10612
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->end()V

    .line 10619
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v1           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #width:I
    :goto_2
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    goto/16 :goto_0

    .line 10606
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v1       #height:I
    .restart local v2       #restoreCount:I
    .restart local v3       #width:I
    :cond_4
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 10609
    .end local v1           #height:I
    .end local v3           #width:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 10610
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10612
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5}, Landroid/view/DisplayList;->end()V

    throw v4

    .line 10615
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v2           #restoreCount:I
    :cond_5
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10616
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 11737
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 11738
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 11742
    :goto_0
    return-object v0

    .line 11740
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 11741
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11742
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 10630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "autoScale"

    .prologue
    const/high16 v2, 0x2

    const v1, 0x8000

    .line 10661
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 10662
    const/4 v0, 0x0

    .line 10667
    :goto_0
    return-object v0

    .line 10664
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 10665
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 10667
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    .line 10715
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    .line 4499
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    .line 7151
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 7152
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 7153
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 7154
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7155
    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    .line 10166
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 3
    .parameter "offsetRequired"

    .prologue
    .line 11082
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 11083
    .local v0, padding:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 11084
    :cond_0
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .locals 2
    .parameter "offsetRequired"

    .prologue
    .line 11072
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 11073
    .local v0, top:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 11074
    :cond_0
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5150
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5317
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5318
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 5319
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 8239
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8240
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 8270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v2, 0x0

    .line 8257
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 8258
    .local v1, width:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 8259
    .local v0, height:I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 8260
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8261
    if-eqz p2, :cond_0

    .line 8262
    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 8264
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 8266
    :cond_2
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 8885
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 8886
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8888
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 10351
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 10416
    :cond_0
    :goto_0
    return-object v5

    .line 10356
    :cond_1
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, v6, v7

    .line 10357
    .local v4, width:I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v6, v7

    .line 10359
    .local v2, height:I
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 10363
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_7

    .line 10364
    :cond_2
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_4

    .line 10365
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v7

    invoke-virtual {v6, v4, v2, v7}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v6

    iput-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 10367
    iget-object v6, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 10374
    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10378
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v6, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 10379
    .local v1, currentCanvas:Landroid/view/HardwareCanvas;
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 10382
    .local v0, canvas:Landroid/view/HardwareCanvas;
    if-nez v0, :cond_6

    .line 10383
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10368
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v1           #currentCanvas:Landroid/view/HardwareCanvas;
    :cond_4
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v6

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v6

    if-eq v6, v2, :cond_3

    .line 10369
    :cond_5
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v4, v2}, Landroid/view/HardwareLayer;->resize(II)V

    .line 10370
    iget-object v6, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 10387
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v1       #currentCanvas:Landroid/view/HardwareCanvas;
    :cond_6
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 10389
    :try_start_0
    invoke-virtual {v0, v4, v2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 10390
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 10391
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 10393
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v3

    .line 10395
    .local v3, restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 10396
    iget v5, p0, Landroid/view/View;->mScrollX:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 10398
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x8020

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10401
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_8

    .line 10402
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x600001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10403
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10408
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10410
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10411
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 10412
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 10416
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v1           #currentCanvas:Landroid/view/HardwareCanvas;
    .end local v3           #restoreCount:I
    :cond_7
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto/16 :goto_0

    .line 10405
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v1       #currentCanvas:Landroid/view/HardwareCanvas;
    .restart local v3       #restoreCount:I
    :cond_8
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 10410
    .end local v3           #restoreCount:I
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10411
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 10412
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v6, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    throw v5
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 7140
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "outRect"

    .prologue
    .line 8194
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8195
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8196
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_1

    .line 8197
    :cond_0
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8206
    :goto_0
    return-void

    .line 8199
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 8200
    .local v1, tmpRect:Landroid/graphics/RectF;
    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8202
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8203
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 3285
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3286
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3287
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3288
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3291
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 1

    .prologue
    .line 13917
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3323
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3324
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3325
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3326
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 3327
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3328
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 3329
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3335
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_0
    return v2
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 12584
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 7322
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7323
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_2

    .line 7324
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7325
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7326
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7327
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7329
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 7330
    const/4 v1, 0x0

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    .line 7332
    :cond_1
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 7334
    :goto_0
    return-object v1

    :cond_2
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    .line 4530
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    .line 5593
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 10307
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000000
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x80000000
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x40000000
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4904
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, -0x4000

    and-int/2addr v0, v1

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 8384
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7884
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 9203
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 11022
    const/4 v0, 0x0

    return v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .locals 1

    .prologue
    .line 3450
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 3451
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3454
    :goto_0
    return-object v0

    .line 3453
    :cond_0
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3454
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 8274
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 8275
    .local v0, offset:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8276
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 8277
    const/4 v1, 0x1

    .line 8279
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .parameter "location"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 12345
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_0

    .line 12386
    :goto_0
    return-void

    .line 12347
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 12348
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 12351
    :cond_2
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 12352
    .local v0, position:[F
    const/4 v4, 0x0

    aput v4, v0, v6

    aput v4, v0, v7

    .line 12354
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    .line 12355
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12358
    :cond_3
    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 12359
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 12361
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12362
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_5

    move-object v1, v2

    .line 12363
    check-cast v1, Landroid/view/View;

    .line 12365
    .local v1, view:Landroid/view/View;
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 12366
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 12368
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_4

    .line 12369
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12372
    :cond_4
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 12373
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 12375
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12376
    goto :goto_1

    .line 12378
    .end local v1           #view:Landroid/view/View;
    :cond_5
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_6

    move-object v3, v2

    .line 12380
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 12381
    .local v3, vr:Landroid/view/ViewRootImpl;
    aget v4, v0, v6

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 12384
    .end local v3           #vr:Landroid/view/ViewRootImpl;
    :cond_6
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    .line 12385
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    goto/16 :goto_0
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 12327
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12329
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12330
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 12331
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 12332
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 12334
    :cond_0
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 7230
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 7231
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7232
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 7234
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .prologue
    .line 7189
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1

    .prologue
    .line 7202
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .prologue
    .line 7213
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .prologue
    .line 7165
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1

    .prologue
    .line 7178
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    .line 4617
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    .line 4638
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 4554
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    .line 4575
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    .line 4596
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .prologue
    .line 3535
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3536
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 13866
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 12128
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    .line 12177
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 12139
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 12164
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    .line 12152
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 12117
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 7077
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 7614
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 7658
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000000
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4942
    invoke-direct {p0}, Landroid/view/View;->resolveLayoutDirectionIfNeeded()V

    .line 4943
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x4000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter "who"

    .prologue
    .line 11666
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getResolvedTextDirection()I
    .locals 1

    .prologue
    .line 13972
    iget v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    if-nez v0, :cond_0

    .line 13973
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 13975
    :cond_0
    iget v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 11590
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7944
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 9217
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 11036
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 12303
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 12304
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 12305
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 12316
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 12310
    :cond_0
    move-object v0, p0

    .line 12312
    .local v0, parent:Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 12313
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 12316
    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 7404
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationX()F
    .locals 1

    .prologue
    .line 7491
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1

    .prologue
    .line 7445
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 7538
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 7576
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 9355
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    .line 7109
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    .line 7120
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11329
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundEffect()I
    .locals 1

    .prologue
    .line 3622
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 13092
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 13094
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 13095
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 13096
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_0

    .line 13097
    move v1, v0

    .line 13101
    .end local v0           #bgMinHeight:I
    :cond_0
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 13116
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 13118
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 13119
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 13120
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_0

    .line 13121
    move v1, v0

    .line 13125
    .end local v0           #bgMinWidth:I
    :cond_0
    return v1
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 13375
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 12597
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 12626
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 12627
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextDirection()I
    .locals 1

    .prologue
    .line 13935
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    return v0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7758
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 9174
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 11050
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 6842
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5398
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5399
    return-object v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 8047
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 8083
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVelocityPolynomialType()I
    .locals 2

    .prologue
    .line 15253
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 15255
    .local v0, viewroot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 15257
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getVelocityPolynomialType()I

    move-result v1

    .line 15260
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 3252
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3253
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3254
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3255
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3258
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVerticalScrollFactor()F
    .locals 4

    .prologue
    .line 13896
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 13897
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 13898
    .local v0, outValue:Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13900
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13903
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 13906
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_1
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 3446
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3301
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3302
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3303
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3304
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 3305
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3306
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 3307
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3313
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_0
    return v2
.end method

.method getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 2

    .prologue
    .line 5512
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 5513
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 12288
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 12289
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12294
    :goto_0
    return-object v0

    .line 12291
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 12292
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12294
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4739
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 7130
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    .line 9911
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 9951
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 9920
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 6048
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outRect"

    .prologue
    .line 6068
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 6070
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6077
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 6078
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 6079
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 6080
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 6081
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 6086
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 6071
    :catch_0
    move-exception v1

    .line 6072
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 6084
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6085
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 8002
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 8024
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .locals 1
    .parameter "off"

    .prologue
    .line 14319
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 14320
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3806
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 3807
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3809
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3813
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3814
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3816
    :cond_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 3931
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 3947
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 5858
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .locals 1

    .prologue
    .line 7254
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 7255
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7256
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    .line 7258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasOnClickListeners()Z
    .locals 2

    .prologue
    .line 3559
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3560
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 8877
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasStaticLayer()Z
    .locals 1

    .prologue
    .line 10288
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 5956
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 3236
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3238
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3241
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3350
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3352
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3354
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_0

    .line 3355
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3358
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 3360
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1

    .line 3361
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 3363
    :cond_1
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 3366
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 3370
    instance-of v5, p0, Landroid/webkit/WebView;

    if-eqz v5, :cond_2

    .line 3371
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 3374
    :cond_2
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 3379
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3383
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3384
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3386
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3387
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 3388
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3391
    :cond_3
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3393
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_4

    .line 3394
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 3397
    :cond_4
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3398
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3400
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3401
    if-eqz v3, :cond_5

    .line 3402
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3405
    :cond_5
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3407
    if-eqz v0, :cond_6

    .line 3408
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 3412
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3413
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 8710
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 8711
    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 8673
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8701
    :cond_0
    :goto_0
    return-void

    .line 8676
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 8679
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8680
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8681
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8682
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8683
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8693
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 8694
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 8695
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 8696
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8697
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8698
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "dirty"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 8626
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8655
    :cond_0
    :goto_0
    return-void

    .line 8629
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 8632
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8633
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8634
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8635
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8636
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8646
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 8647
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 8648
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 8649
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8650
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8652
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method invalidate(Z)V
    .locals 0
    .parameter "invalidateCache"

    .prologue
    .line 8727
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidateEx(Z)V

    .line 8728
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 11599
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11600
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 11601
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 11602
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 11604
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 11607
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    return-void
.end method

.method protected invalidateEx(Z)V
    .locals 8
    .parameter "invalidateCache"

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 8735
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8768
    :cond_0
    :goto_0
    return-void

    .line 8738
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    if-eqz p1, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_3

    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_0

    .line 8741
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 8742
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8743
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x20

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8744
    if-eqz p1, :cond_4

    .line 8745
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8746
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8748
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8749
    .local v0, ai:Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8760
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 8761
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8762
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8765
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected invalidateParentCaches()V
    .locals 3

    .prologue
    .line 8811
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8812
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 8814
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 2

    .prologue
    .line 8826
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8827
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 8829
    :cond_0
    return-void
.end method

.method public isActivated()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 12272
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5017
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 7827
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x60

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 10497
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 10204
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4762
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 5208
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 5221
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 4450
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 4883
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 11103
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 9104
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 9231
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHovered()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6565
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 10986
    const/4 v0, 0x0

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 6756
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6757
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 6758
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6759
    const/4 v1, 0x1

    .line 6763
    :goto_1
    return v1

    .line 6761
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 6763
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6154
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 6155
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 6157
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 11432
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4957
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 5044
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 8844
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    const v1, 0x3f7aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 11008
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .locals 1

    .prologue
    .line 12192
    iget-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 5102
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    .line 12569
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 5115
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveFromParentEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 5179
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    .line 9312
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 12230
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4658
    move-object v0, p0

    .line 4661
    .local v0, current:Landroid/view/View;
    :cond_0
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_2

    .line 4674
    :cond_1
    :goto_0
    return v2

    .line 4664
    :cond_2
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4665
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 4668
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 4669
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 4671
    check-cast v0, Landroid/view/View;

    .line 4672
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 4854
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 9139
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 9261
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 9643
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 11852
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 11853
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11855
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 17
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11457
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 11458
    .local v9, oldL:I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .line 11459
    .local v10, oldT:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .line 11460
    .local v12, oldB:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .line 11461
    .local v11, oldR:I
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    .line 11462
    .local v2, changed:Z
    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_1

    :cond_0
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 11467
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 11468
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11470
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 11471
    .local v14, li:Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11472
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 11474
    .local v15, listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 11475
    .local v16, numListeners:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 11476
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 11475
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 11480
    .end local v13           #i:I
    .end local v14           #li:Landroid/view/View$ListenerInfo;
    .end local v15           #listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16           #numListeners:I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11481
    return-void
.end method

.method public final measure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 12900
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_2

    .line 12905
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12912
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 12916
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 12917
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12922
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12925
    :cond_2
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 12926
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 12927
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 6136
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6137
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 6138
    if-nez p1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_1

    .line 6140
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 6143
    :cond_1
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .locals 9
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 8332
    if-eqz p1, :cond_3

    .line 8333
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8334
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 8336
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 8337
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8338
    .local v3, p:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 8339
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v6, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8342
    .local v4, r:Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 8343
    iget v6, p0, Landroid/view/View;->mLeft:I

    add-int v2, v6, p1

    .line 8344
    .local v2, minLeft:I
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 8349
    .local v1, maxRight:I
    :goto_1
    sub-int v6, v1, v2

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 8350
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8356
    .end local v1           #maxRight:I
    .end local v2           #minLeft:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_1
    :goto_2
    iget v6, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/view/View;->mLeft:I

    .line 8357
    iget v6, p0, Landroid/view/View;->mRight:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/view/View;->mRight:I

    .line 8359
    if-nez v0, :cond_2

    .line 8360
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8361
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 8363
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 8365
    .end local v0           #matrixIsIdentity:Z
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 8334
    goto :goto_0

    .line 8346
    .restart local v0       #matrixIsIdentity:Z
    .restart local v3       #p:Landroid/view/ViewParent;
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_5
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 8347
    .restart local v2       #minLeft:I
    iget v6, p0, Landroid/view/View;->mRight:I

    add-int v1, v6, p1

    .restart local v1       #maxRight:I
    goto :goto_1

    .line 8353
    .end local v1           #maxRight:I
    .end local v2           #minLeft:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public offsetTopAndBottom(I)V
    .locals 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    .line 8288
    if-eqz p1, :cond_3

    .line 8289
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8290
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 8292
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 8293
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8294
    .local v3, p:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 8295
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8299
    .local v4, r:Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 8300
    iget v7, p0, Landroid/view/View;->mTop:I

    add-int v2, v7, p1

    .line 8301
    .local v2, minTop:I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 8302
    .local v1, maxBottom:I
    move v5, p1

    .line 8308
    .local v5, yLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    sub-int v8, v1, v2

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8309
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8315
    .end local v1           #maxBottom:I
    .end local v2           #minTop:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #yLoc:I
    :cond_1
    :goto_2
    iget v7, p0, Landroid/view/View;->mTop:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mTop:I

    .line 8316
    iget v7, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mBottom:I

    .line 8318
    if-nez v0, :cond_2

    .line 8319
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8320
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8322
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 8324
    .end local v0           #matrixIsIdentity:Z
    :cond_3
    return-void

    :cond_4
    move v0, v6

    .line 8290
    goto :goto_0

    .line 8304
    .restart local v0       #matrixIsIdentity:Z
    .restart local v3       #p:Landroid/view/ViewParent;
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_5
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 8305
    .restart local v2       #minTop:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    add-int v1, v7, p1

    .line 8306
    .restart local v1       #maxBottom:I
    const/4 v5, 0x0

    .restart local v5       #yLoc:I
    goto :goto_1

    .line 8312
    .end local v1           #maxBottom:I
    .end local v2           #minTop:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #yLoc:I
    :cond_6
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 13222
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13223
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 13210
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13211
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 9719
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    .line 9720
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 9722
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 9723
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 9724
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9726
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 9729
    invoke-direct {p0}, Landroid/view/View;->resolveLayoutDirectionIfNeeded()V

    .line 9730
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9731
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 9732
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9733
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9734
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 9736
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 6312
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 13686
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 6112
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 7
    .parameter "consistency"

    .prologue
    const v6, 0x8000

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 12705
    const/4 v2, 0x1

    .line 12707
    .local v2, result:Z
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    move v1, v0

    .line 12708
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_4

    .line 12710
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 12711
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 12712
    const/4 v2, 0x0

    .line 12713
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have a parent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12717
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1

    .line 12718
    const/4 v2, 0x0

    .line 12719
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not attached to a window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12724
    :cond_1
    if-eqz v0, :cond_2

    .line 12728
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_2

    .line 12730
    const/4 v2, 0x0

    .line 12731
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was invalidated but its drawing cache is valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12736
    :cond_2
    return v2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    :cond_3
    move v1, v3

    .line 12707
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_4
    move v0, v3

    .line 12708
    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 6398
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 8
    .parameter "extraSpace"

    .prologue
    const/high16 v7, 0x40

    const/4 v6, 0x0

    .line 11762
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 11764
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 11817
    :cond_0
    :goto_0
    return-object v0

    .line 11769
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11771
    .local v2, privateFlags:I
    const/4 v4, 0x0

    .line 11772
    .local v4, viewStateIndex:I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x10

    .line 11773
    :cond_2
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x8

    .line 11774
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x4

    .line 11775
    :cond_4
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x2

    .line 11776
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit8 v4, v4, 0x1

    .line 11777
    :cond_6
    const/high16 v5, 0x4000

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    or-int/lit8 v4, v4, 0x20

    .line 11778
    :cond_7
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 11783
    or-int/lit8 v4, v4, 0x40

    .line 11785
    :cond_8
    const/high16 v5, 0x1000

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    or-int/lit16 v4, v4, 0x80

    .line 11787
    :cond_9
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11788
    .local v3, privateFlags2:I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0x100

    .line 11789
    :cond_a
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_b

    or-int/lit16 v4, v4, 0x200

    .line 11791
    :cond_b
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 11805
    .local v0, drawableState:[I
    if-eqz p1, :cond_0

    .line 11810
    if-eqz v0, :cond_c

    .line 11811
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 11812
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object v0, v1

    .line 11817
    goto :goto_0

    .line 11814
    .end local v1           #fullState:[I
    :cond_c
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 6328
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 9882
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9884
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 9885
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 9886
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 9887
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 9889
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 9891
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 9893
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9894
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->invalidate()V

    .line 9897
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 9898
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 9901
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 9903
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 9904
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 9905
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 6011
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 13647
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 9692
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 9662
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9663
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9664
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 9526
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 9527
    .local v9, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_0

    .line 9529
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 9531
    .local v18, state:I
    if-nez v18, :cond_1

    .line 9634
    .end local v18           #state:I
    :cond_0
    :goto_0
    return-void

    .line 9535
    .restart local v18       #state:I
    :cond_1
    const/4 v14, 0x0

    .line 9537
    .local v14, invalidate:Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    .line 9539
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_2

    .line 9540
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 9543
    :cond_2
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 9546
    .local v19, values:[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_7

    .line 9548
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9556
    :goto_1
    const/4 v14, 0x1

    .line 9564
    .end local v19           #values:[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    .line 9566
    .local v21, viewFlags:I
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    const/4 v10, 0x1

    .line 9568
    .local v10, drawHorizontalScrollBar:Z
    :goto_3
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v11, 0x1

    .line 9572
    .local v11, drawVerticalScrollBar:Z
    :goto_4
    if-nez v11, :cond_3

    if-eqz v10, :cond_0

    .line 9573
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v22, v2, v3

    .line 9574
    .local v22, width:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .line 9576
    .local v12, height:I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 9578
    .local v4, scrollBar:Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .line 9579
    .local v15, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .line 9580
    .local v16, scrollY:I
    const/high16 v2, 0x200

    and-int v2, v2, v21

    if-nez v2, :cond_b

    const/4 v13, -0x1

    .line 9584
    .local v13, inside:I
    :goto_5
    if-eqz v10, :cond_5

    .line 9585
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 9586
    .local v17, size:I
    if-gtz v17, :cond_4

    .line 9587
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 9590
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 9593
    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .line 9595
    .local v20, verticalScrollBarGap:I
    :goto_6
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 9596
    .local v6, top:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 9597
    .local v5, left:I
    add-int v2, v15, v22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 9598
    .local v7, right:I
    add-int v8, v6, v17

    .local v8, bottom:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 9599
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 9600
    if-eqz v14, :cond_5

    .line 9601
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9605
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v17           #size:I
    .end local v20           #verticalScrollBarGap:I
    :cond_5
    if-eqz v11, :cond_0

    .line 9606
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 9607
    .restart local v17       #size:I
    if-gtz v17, :cond_6

    .line 9608
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 9611
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 9614
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v2, :pswitch_data_0

    .line 9618
    add-int v2, v15, v22

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 9624
    .restart local v5       #left:I
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 9625
    .restart local v6       #top:I
    add-int v7, v5, v17

    .line 9626
    .restart local v7       #right:I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .restart local v8       #bottom:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 9627
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 9628
    if-eqz v14, :cond_0

    .line 9629
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 9550
    .end local v4           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v10           #drawHorizontalScrollBar:Z
    .end local v11           #drawVerticalScrollBar:Z
    .end local v12           #height:I
    .end local v13           #inside:I
    .end local v15           #scrollX:I
    .end local v16           #scrollY:I
    .end local v17           #size:I
    .end local v21           #viewFlags:I
    .end local v22           #width:I
    .restart local v19       #values:[F
    :cond_7
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 9560
    .end local v19           #values:[F
    :cond_8
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 9566
    .restart local v21       #viewFlags:I
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 9568
    .restart local v10       #drawHorizontalScrollBar:Z
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 9580
    .restart local v4       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v11       #drawVerticalScrollBar:Z
    .restart local v12       #height:I
    .restart local v15       #scrollX:I
    .restart local v16       #scrollY:I
    .restart local v22       #width:I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 9593
    .restart local v13       #inside:I
    .restart local v17       #size:I
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 9621
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5       #left:I
    goto :goto_7

    .line 9614
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 9682
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9683
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9684
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5745
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5748
    const/4 v0, 0x0

    .line 5750
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 11582
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 5583
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3969
    if-eqz p1, :cond_0

    .line 3970
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3973
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3974
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    .line 3975
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3976
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3978
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_2

    .line 3980
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 3982
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 3988
    :cond_3
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 3989
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3990
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_4

    .line 3991
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 3994
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_5

    .line 3995
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 3997
    :cond_5
    return-void

    .line 3983
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_6
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_3

    .line 3985
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    .line 4426
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 4427
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6454
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .locals 0
    .parameter "hovered"

    .prologue
    .line 6612
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6498
    .local v0, action:I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_2

    .line 6499
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6503
    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 6504
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6515
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6516
    packed-switch v0, :pswitch_data_0

    .line 6532
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 6535
    :goto_2
    return v1

    .line 6507
    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6510
    :cond_3
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 6511
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 6518
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    .line 6521
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 6535
    goto :goto_2

    .line 6516
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4204
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4205
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4209
    :goto_0
    return-void

    .line 4207
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4217
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4219
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4220
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 4221
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4223
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 4224
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 4225
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 4228
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 4229
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4231
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 4285
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4286
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4290
    :goto_0
    return-void

    .line 4288
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4298
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 4299
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4300
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 4302
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4303
    .local v1, locationOnScreen:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4304
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 4305
    aget v4, v1, v5

    aget v5, v1, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 4306
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4308
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 4309
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4310
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 4311
    check-cast v3, Landroid/view/View;

    .line 4312
    .local v3, parentView:Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 4316
    .end local v2           #parent:Landroid/view/ViewParent;
    .end local v3           #parentView:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4318
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4320
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 4321
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 4322
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 4323
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 4324
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 4325
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 4330
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4331
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4333
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4334
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4335
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4340
    :cond_1
    :goto_0
    return-void

    .line 4337
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v4, 0x20

    const/4 v1, 0x1

    .line 6199
    const/4 v0, 0x0

    .line 6201
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    .line 6218
    .end local v0           #result:Z
    :cond_0
    :goto_0
    return v0

    .line 6204
    .restart local v0       #result:Z
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 6205
    goto :goto_0

    .line 6208
    :cond_1
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 6211
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6212
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    .line 6213
    goto :goto_0

    .line 6201
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6227
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 6276
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6185
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6291
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6241
    const/4 v0, 0x0

    .line 6243
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 6262
    :goto_1
    return v1

    .line 6246
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 6247
    const/4 v1, 0x1

    goto :goto_1

    .line 6249
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6250
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6252
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 6254
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6256
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0

    .line 6243
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 11497
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 12976
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12978
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 13855
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4161
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4162
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4166
    :goto_0
    return-void

    .line 4164
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 4175
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 10150
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10151
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 10152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10158
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 10092
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10093
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v2, 0x1

    .line 7014
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7015
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    .line 7018
    :cond_0
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7020
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7021
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 7022
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 7024
    :cond_1
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 13237
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 7059
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    .line 5567
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 5568
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5569
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6621
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 6623
    .local v3, viewFlags:I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 6624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_0

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_0

    .line 6625
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, -0x4001

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6626
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6630
    :cond_0
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_1

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    :cond_1
    move v6, v7

    .line 6749
    :cond_2
    :goto_0
    return v6

    .line 6634
    :cond_3
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_4

    .line 6635
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    .line 6636
    goto :goto_0

    .line 6640
    :cond_4
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_5

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    .line 6642
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_6
    :goto_1
    move v6, v7

    .line 6746
    goto :goto_0

    .line 6644
    :pswitch_0
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x200

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    move v2, v7

    .line 6645
    .local v2, prepressed:Z
    :goto_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    .line 6648
    :cond_7
    const/4 v0, 0x0

    .line 6649
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    .line 6650
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 6653
    :cond_8
    if-eqz v2, :cond_9

    .line 6658
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6659
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6662
    :cond_9
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_b

    .line 6664
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6667
    if-nez v0, :cond_b

    .line 6671
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_a

    .line 6672
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 6674
    :cond_a
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 6675
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 6680
    :cond_b
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_c

    .line 6681
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 6684
    :cond_c
    if-eqz v2, :cond_f

    .line 6685
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6691
    :cond_d
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_1

    .end local v0           #focusTaken:Z
    .end local v2           #prepressed:Z
    :cond_e
    move v2, v6

    .line 6644
    goto :goto_2

    .line 6687
    .restart local v0       #focusTaken:Z
    .restart local v2       #prepressed:Z
    :cond_f
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 6689
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .line 6696
    .end local v0           #focusTaken:Z
    .end local v2           #prepressed:Z
    :pswitch_1
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 6698
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 6703
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    .line 6707
    .local v1, isInScrollingContainer:Z
    if-eqz v1, :cond_11

    .line 6708
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x200

    or-int/2addr v6, v8

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6709
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_10

    .line 6710
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 6712
    :cond_10
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 6715
    :cond_11
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6716
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6717
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_1

    .line 6722
    .end local v1           #isInScrollingContainer:Z
    :pswitch_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6723
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6724
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_1

    .line 6728
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 6729
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 6732
    .local v5, y:I
    int-to-float v6, v4

    int-to-float v8, v5

    iget v9, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v9, v9

    invoke-direct {p0, v6, v8, v9}, Landroid/view/View;->pointInView(FFF)Z

    move-result v6

    if-nez v6, :cond_6

    .line 6734
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 6735
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_6

    .line 6737
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6740
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6741
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_1

    .line 6642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6413
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 5979
    if-nez p2, :cond_0

    .line 5980
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 5981
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 5986
    :cond_0
    :goto_0
    return-void

    .line 5983
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 5932
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5933
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_3

    .line 5934
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5935
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5937
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5938
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 5940
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5941
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 5942
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 5946
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5947
    return-void

    .line 5943
    :cond_3
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 5944
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 6036
    if-nez p1, :cond_0

    .line 6037
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 6039
    :cond_0
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .locals 8
    .parameter "indent"
    .parameter "clear"
    .parameter "clearMask"

    .prologue
    .line 10508
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10512
    if-eqz p2, :cond_0

    .line 10513
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10515
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 10516
    check-cast v3, Landroid/view/ViewGroup;

    .line 10517
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 10518
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10519
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10520
    .local v0, child:Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 10518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10523
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 13794
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .line 13795
    .local v10, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 13797
    .local v2, canScrollHorizontal:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 13799
    .local v3, canScrollVertical:Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 13801
    .local v9, overScrollHorizontal:Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 13804
    .local v11, overScrollVertical:Z
    :goto_3
    add-int v7, p3, p1

    .line 13805
    .local v7, newScrollX:I
    if-nez v9, :cond_2

    .line 13806
    const/16 p7, 0x0

    .line 13809
    :cond_2
    add-int v8, p4, p2

    .line 13810
    .local v8, newScrollY:I
    if-nez v11, :cond_3

    .line 13811
    const/16 p8, 0x0

    .line 13815
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 13816
    .local v6, left:I
    add-int v12, p7, p5

    .line 13817
    .local v12, right:I
    move/from16 v0, p8

    neg-int v13, v0

    .line 13818
    .local v13, top:I
    add-int v1, p8, p6

    .line 13820
    .local v1, bottom:I
    const/4 v4, 0x0

    .line 13821
    .local v4, clampedX:Z
    if-le v7, v12, :cond_b

    .line 13822
    move v7, v12

    .line 13823
    const/4 v4, 0x1

    .line 13829
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 13830
    .local v5, clampedY:Z
    if-le v8, v1, :cond_c

    .line 13831
    move v8, v1

    .line 13832
    const/4 v5, 0x1

    .line 13838
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 13840
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 13795
    .end local v1           #bottom:I
    .end local v2           #canScrollHorizontal:Z
    .end local v3           #canScrollVertical:Z
    .end local v4           #clampedX:Z
    .end local v5           #clampedY:Z
    .end local v6           #left:I
    .end local v7           #newScrollX:I
    .end local v8           #newScrollY:I
    .end local v9           #overScrollHorizontal:Z
    .end local v11           #overScrollVertical:Z
    .end local v12           #right:I
    .end local v13           #top:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 13797
    .restart local v2       #canScrollHorizontal:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 13799
    .restart local v3       #canScrollVertical:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 13801
    .restart local v9       #overScrollHorizontal:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 13824
    .restart local v1       #bottom:I
    .restart local v4       #clampedX:Z
    .restart local v6       #left:I
    .restart local v7       #newScrollX:I
    .restart local v8       #newScrollY:I
    .restart local v11       #overScrollVertical:Z
    .restart local v12       #right:I
    .restart local v13       #top:I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 13825
    move v7, v6

    .line 13826
    const/4 v4, 0x1

    goto :goto_4

    .line 13833
    .restart local v5       #clampedY:Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 13834
    move v8, v13

    .line 13835
    const/4 v5, 0x1

    goto :goto_5

    .line 13840
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 3700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3702
    const/4 v0, 0x1

    .line 3705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3636
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3638
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3639
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 3642
    iget v2, p0, Landroid/view/View;->mSoundEffect:I

    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 3644
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3648
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method performCollectViewAttributes(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/high16 v2, 0x400

    const/4 v4, 0x1

    .line 6123
    and-int/lit8 v1, p1, 0xc

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 6124
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 6125
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 6127
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v3, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 6128
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 6129
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6130
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 6133
    .end local v0           #li:Landroid/view/View$ListenerInfo;
    :cond_1
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 13330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 13343
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 13351
    :cond_0
    :goto_0
    return v0

    .line 13347
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13351
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 3675
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3677
    const/4 v0, 0x0

    .line 3678
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3679
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 3680
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 3682
    :cond_0
    if-nez v0, :cond_1

    .line 3683
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 3685
    :cond_1
    if-eqz v0, :cond_2

    .line 3686
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3688
    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 3
    .parameter "soundConstant"

    .prologue
    .line 13289
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13312
    :cond_0
    :goto_0
    return-void

    .line 13295
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    .line 13296
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 13299
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 13300
    .local v0, ringerMode:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 13306
    if-ltz p1, :cond_0

    .line 13311
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v1, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method final pointInView(FF)Z
    .locals 3
    .parameter "localX"
    .parameter "localY"

    .prologue
    const/4 v2, 0x0

    .line 8212
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 8906
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8907
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 8908
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8915
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .end local v1           #handler:Landroid/os/Handler;
    :goto_0
    return v2

    .line 8911
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 8912
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 3
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 8939
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8940
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 8941
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8948
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .end local v1           #handler:Landroid/os/Handler;
    :goto_0
    return v2

    .line 8944
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 8945
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 8989
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 8990
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 9008
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 9009
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 3
    .parameter "delayMilliseconds"

    .prologue
    .line 9024
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9025
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 9026
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 9027
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 9028
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9029
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9031
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 4
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 9052
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9053
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 9054
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 9055
    .local v1, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 9056
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 9057
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 9058
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 9059
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 9061
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 9062
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 9063
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9064
    iget-object v3, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9066
    .end local v1           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected recomputePadding()V
    .locals 4

    .prologue
    .line 9285
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 9286
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 11717
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11718
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 11720
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11721
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 11722
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 11724
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    .line 8966
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8967
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 8968
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8975
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8976
    .end local v1           #handler:Landroid/os/Handler;
    :goto_0
    return v3

    .line 8971
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 3522
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3523
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3527
    :cond_0
    :goto_0
    return-void

    .line 3526
    :cond_1
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 3488
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3489
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3493
    :cond_0
    :goto_0
    return-void

    .line 3492
    :cond_1
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 5434
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 5456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5490
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1

    .line 5507
    :cond_0
    :goto_0
    return v0

    .line 5496
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_0

    .line 5502
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5506
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 5507
    goto :goto_0
.end method

.method public final requestFocusFromTouch()Z
    .locals 2

    .prologue
    .line 5528
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5529
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5530
    .local v0, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5531
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5534
    .end local v0           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 12856
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12857
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12859
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 12860
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 12861
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveWithDirection(I)V

    .line 12863
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12864
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 12867
    :cond_1
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 3830
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 5
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 3849
    move-object v0, p0

    .line 3850
    .local v0, child:Landroid/view/View;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3851
    .local v1, parent:Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 3852
    .local v2, scrolled:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3853
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 3858
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3859
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3861
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_1

    .line 3868
    :cond_0
    return v2

    :cond_1
    move-object v0, v1

    .line 3865
    check-cast v0, Landroid/view/View;

    .line 3866
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method protected resetResolvedLayoutDirection()V
    .locals 1

    .prologue
    .line 9859
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 9860
    return-void
.end method

.method protected resetResolvedTextDirection()V
    .locals 1

    .prologue
    .line 14001
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 14002
    return-void
.end method

.method protected resolvePadding()V
    .locals 1

    .prologue
    .line 9796
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9817
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_5

    .line 9818
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 9822
    :cond_0
    :goto_0
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_6

    .line 9823
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 9829
    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_2
    iput v0, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 9831
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 9832
    return-void

    .line 9801
    :pswitch_0
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_3

    .line 9802
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 9806
    :cond_2
    :goto_3
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_4

    .line 9807
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 9803
    :cond_3
    iget v0, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v0, :cond_2

    .line 9804
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_3

    .line 9808
    :cond_4
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v0, :cond_1

    .line 9809
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 9819
    :cond_5
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v0, :cond_0

    .line 9820
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_0

    .line 9824
    :cond_6
    iget v0, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v0, :cond_1

    .line 9825
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_1

    .line 9829
    :cond_7
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_2

    .line 9796
    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method protected resolveTextDirection()V
    .locals 1

    .prologue
    .line 13984
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    if-eqz v0, :cond_0

    .line 13985
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 13993
    :goto_0
    return-void

    .line 13988
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 13989
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResolvedTextDirection()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    goto :goto_0

    .line 13992
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10106
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 10107
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10040
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 10041
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 11618
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 11619
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 11620
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 11625
    :cond_0
    :goto_0
    return-void

    .line 11622
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, p3, v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8433
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 8434
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8412
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 8413
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 8414
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 8415
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 8416
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 8417
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8418
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 8419
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8420
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8423
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 4027
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4028
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 4032
    :goto_0
    return-void

    .line 4030
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventInternal(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 4040
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4041
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4043
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4061
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4062
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4066
    :goto_0
    return-void

    .line 4064
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4074
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4084
    :goto_0
    return-void

    .line 4077
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4079
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    and-int/lit16 v0, v0, 0x21bf

    if-eqz v0, :cond_1

    .line 4080
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4083
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 4352
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 4353
    return-void
.end method

.method public setActivated(Z)V
    .locals 5
    .parameter "activated"

    .prologue
    const/high16 v0, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 12247
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_0

    .line 12248
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001

    and-int/2addr v2, v4

    if-eqz p1, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12249
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 12250
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12251
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 12253
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 12247
    goto :goto_0

    :cond_2
    move v0, v1

    .line 12248
    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 7717
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7718
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 7719
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7720
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7721
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7723
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 7728
    :goto_0
    return-void

    .line 7725
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0
.end method

.method setAlphaNoInvalidation(F)Z
    .locals 3
    .parameter "alpha"

    .prologue
    .line 7740
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7741
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 7742
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 7743
    .local v0, subclassHandlesAlpha:Z
    if-eqz v0, :cond_0

    .line 7744
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7748
    :goto_0
    return v0

    .line 7746
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 13195
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 13196
    if-eqz p1, :cond_0

    .line 13197
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 13199
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 11863
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 11864
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 11868
    :goto_0
    return-void

    .line 11866
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "d"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 11902
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_0

    .line 11989
    :goto_0
    return-void

    .line 11906
    :cond_0
    const/4 v1, 0x0

    .line 11908
    .local v1, requestLayout:Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    .line 11914
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 11915
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11916
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11919
    :cond_1
    if-eqz p1, :cond_a

    .line 11920
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11921
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_2

    .line 11922
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11923
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11925
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11926
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getResolvedLayoutDirectionSelf()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 11932
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 11938
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_5

    .line 11940
    :cond_4
    const/4 v1, 0x1

    .line 11943
    :cond_5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11944
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11945
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11947
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11948
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11950
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 11951
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11952
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11953
    const/4 v1, 0x1

    .line 11981
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11983
    if-eqz v1, :cond_8

    .line 11984
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11987
    :cond_8
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 11988
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    .line 11928
    .restart local v0       #padding:Landroid/graphics/Rect;
    :pswitch_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_9
    move v2, v4

    .line 11947
    goto :goto_2

    .line 11957
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_a
    iput-object v5, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11959
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 11965
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11966
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11978
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 11926
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 11878
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 11889
    :goto_0
    return-void

    .line 11882
    :cond_0
    const/4 v0, 0x0

    .line 11883
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 11884
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11886
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11888
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public final setBottom(I)V
    .locals 8
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7838
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v6, :cond_4

    .line 7839
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7840
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v0, v5

    .line 7842
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_7

    .line 7843
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 7845
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v6, :cond_6

    .line 7846
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 7850
    .local v1, maxBottom:I
    :goto_1
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 7857
    .end local v1           #maxBottom:I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 7858
    .local v3, width:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v6

    .line 7860
    .local v2, oldHeight:I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 7862
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v3, v4, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7864
    if-nez v0, :cond_3

    .line 7865
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x2000

    and-int/2addr v4, v6

    if-nez v4, :cond_2

    .line 7867
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7869
    :cond_2
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7870
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7872
    :cond_3
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7873
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7875
    .end local v0           #matrixIsIdentity:Z
    .end local v2           #oldHeight:I
    .end local v3           #width:I
    :cond_4
    return-void

    :cond_5
    move v0, v4

    .line 7840
    goto :goto_0

    .line 7848
    .restart local v0       #matrixIsIdentity:Z
    :cond_6
    move v1, p1

    .restart local v1       #maxBottom:I
    goto :goto_1

    .line 7854
    .end local v1           #maxBottom:I
    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setCameraDistance(F)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 7377
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7378
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7380
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7381
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 7382
    .local v0, dpi:F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7383
    .local v1, info:Landroid/view/View$TransformationInfo;
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7384
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 7385
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7388
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v4, v4, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 7389
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7391
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7392
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 5032
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5033
    return-void

    .line 5032
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "contentDescription"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4409
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 4410
    return-void
.end method

.method public setContextMenuZOrderToTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 15218
    iput-boolean p1, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 15219
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 10703
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 10704
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 10705
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10707
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 10483
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 10484
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 10485
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 4516
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 4517
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 10191
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 10192
    return-void

    .line 10191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 4773
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4786
    :goto_0
    return-void

    .line 4775
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4781
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4785
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4775
    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 3272
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3273
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3274
    return-void
.end method

.method public setFastAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 8174
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8175
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 8176
    return-void
.end method

.method public setFastRotationY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 8182
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8183
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8184
    .local v0, info:Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 8185
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8186
    return-void
.end method

.method public setFastScaleX(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 8154
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8155
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8156
    .local v0, info:Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 8157
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8158
    return-void
.end method

.method public setFastScaleY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 8164
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8165
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8166
    .local v0, info:Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 8167
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8168
    return-void
.end method

.method public setFastTranslationX(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 8114
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8115
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8116
    .local v0, info:Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 8117
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8118
    return-void
.end method

.method public setFastTranslationY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 8124
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8125
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8126
    .local v0, info:Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 8127
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8128
    return-void
.end method

.method public setFastX(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 8134
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8135
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8136
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 8137
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8138
    return-void
.end method

.method public setFastY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 8144
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8145
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8146
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 8147
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8148
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 5164
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5166
    return-void

    :cond_0
    move v0, v1

    .line 5164
    goto :goto_0
.end method

.method public setFitsSystemWindows(Z)V
    .locals 2
    .parameter "fitSystemWindows"

    .prologue
    const/4 v1, 0x2

    .line 4710
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4711
    return-void

    .line 4710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 8
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 6852
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 6853
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 6855
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 6856
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 6990
    :cond_0
    :goto_0
    return-void

    .line 6859
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6862
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    .line 6864
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_11

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_11

    .line 6867
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6878
    :cond_2
    :goto_1
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_3

    .line 6879
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_3

    .line 6885
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6886
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6888
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 6894
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_3

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_3

    .line 6895
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 6901
    :cond_3
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_7

    .line 6902
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 6903
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6905
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 6906
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6907
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6908
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_5

    .line 6910
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6914
    :cond_5
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6916
    :cond_6
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_7

    .line 6917
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 6922
    :cond_7
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_9

    .line 6923
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 6928
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6930
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6932
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_8

    .line 6933
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6936
    :cond_8
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_9

    .line 6937
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 6941
    :cond_9
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_b

    .line 6942
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    .line 6943
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    and-int/lit8 v4, p1, 0xc

    invoke-virtual {v3, p0, v4}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;I)V

    .line 6944
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6948
    :cond_a
    :goto_2
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 6951
    :cond_b
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    .line 6952
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6955
    :cond_c
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_d

    .line 6956
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6957
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6958
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6961
    :cond_d
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_e

    .line 6962
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6963
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6966
    :cond_e
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_f

    .line 6967
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    .line 6968
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13

    .line 6969
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6970
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6977
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6978
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6981
    :cond_f
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_10

    .line 6982
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v3, :cond_10

    .line 6983
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 6987
    :cond_10
    const/high16 v3, -0x4000

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 6988
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 6868
    :cond_11
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 6874
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_1

    .line 6945
    :cond_12
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_a

    .line 6946
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 6972
    :cond_13
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3

    .line 6975
    :cond_14
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter "focusable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4800
    if-nez p1, :cond_0

    .line 4801
    const/high16 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 4803
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4804
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v1, 0x4

    const/4 v2, 0x1

    .line 4822
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4823
    if-eqz p1, :cond_0

    .line 4824
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    .line 4826
    :cond_0
    return-void

    .line 4822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x1

    .line 11513
    const/4 v0, 0x0

    .line 11520
    .local v0, changed:Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_0

    iget v8, p0, Landroid/view/View;->mRight:I

    if-ne v8, p3, :cond_0

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_0

    iget v8, p0, Landroid/view/View;->mBottom:I

    if-eq v8, p4, :cond_5

    .line 11521
    :cond_0
    const/4 v0, 0x1

    .line 11524
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v8, 0x20

    .line 11526
    .local v1, drawn:I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v8, v9

    .line 11527
    .local v5, oldWidth:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 11528
    .local v4, oldHeight:I
    sub-int v3, p3, p1

    .line 11529
    .local v3, newWidth:I
    sub-int v2, p4, p2

    .line 11530
    .local v2, newHeight:I
    if-ne v3, v5, :cond_1

    if-eq v2, v4, :cond_6

    :cond_1
    move v6, v7

    .line 11533
    .local v6, sizeChanged:Z
    :goto_0
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 11535
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 11536
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 11537
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 11538
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 11540
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11543
    if-eqz v6, :cond_3

    .line 11544
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000

    and-int/2addr v8, v9

    if-nez v8, :cond_2

    .line 11546
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_2

    .line 11547
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v7, v8, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 11550
    :cond_2
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 11553
    :cond_3
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_4

    .line 11559
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11560
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 11563
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 11567
    :cond_4
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v1

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11569
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 11571
    .end local v1           #drawn:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #oldHeight:I
    .end local v5           #oldWidth:I
    .end local v6           #sizeChanged:Z
    :cond_5
    return v0

    .line 11530
    .restart local v1       #drawn:I
    .restart local v2       #newHeight:I
    .restart local v3       #newWidth:I
    .restart local v4       #oldHeight:I
    .restart local v5       #oldWidth:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 4870
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4871
    return-void

    .line 4870
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 9119
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 9120
    if-eqz p1, :cond_0

    .line 9121
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 9124
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9126
    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 9244
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9245
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9246
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 9247
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9249
    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 2
    .parameter "hovered"

    .prologue
    const/high16 v1, 0x1000

    .line 6584
    if-eqz p1, :cond_1

    .line 6585
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 6586
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6587
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    .line 6597
    :cond_0
    :goto_0
    return-void

    .line 6591
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 6592
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6593
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 12546
    iput p1, p0, Landroid/view/View;->mID:I

    .line 12547
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .parameter "isRoot"

    .prologue
    .line 12556
    if-eqz p1, :cond_0

    .line 12557
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12561
    :goto_0
    return-void

    .line 12559
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 4544
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4545
    return-void

    .line 4544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4
    .parameter "layerType"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10247
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 10248
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10252
    :cond_1
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v3, :cond_4

    .line 10253
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_3

    .line 10254
    if-nez p2, :cond_2

    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 10255
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10256
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 10280
    :cond_3
    :goto_0
    return-void

    .line 10262
    .restart local p2
    :cond_4
    iget v3, p0, Landroid/view/View;->mLayerType:I

    packed-switch v3, :pswitch_data_0

    .line 10273
    :goto_1
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 10274
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_6

    move v0, v2

    .line 10275
    .local v0, layerDisabled:Z
    :goto_2
    if-eqz v0, :cond_7

    move-object p2, v1

    .end local p2
    :cond_5
    :goto_3
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 10276
    if-eqz v0, :cond_8

    :goto_4
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 10278
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10279
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    .line 10264
    .end local v0           #layerDisabled:Z
    .restart local p2
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 10267
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_1

    .line 10274
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 10275
    .restart local v0       #layerDisabled:Z
    :cond_7
    if-nez p2, :cond_5

    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_3

    .line 10276
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_4

    .line 10262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4922
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4923
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 4925
    const/high16 v0, -0x4000

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 4927
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 8397
    if-nez p1, :cond_0

    .line 8398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8400
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 8401
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8402
    return-void
.end method

.method public final setLeft(I)V
    .locals 10
    .parameter "left"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7895
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v7, :cond_4

    .line 7896
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7897
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v1, v6

    .line 7899
    .local v1, matrixIsIdentity:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 7900
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 7903
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v7, :cond_6

    .line 7904
    move v2, p1

    .line 7905
    .local v2, minLeft:I
    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v7

    .line 7910
    .local v4, xLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 7917
    .end local v2           #minLeft:I
    .end local v4           #xLoc:I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 7918
    .local v3, oldWidth:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v7

    .line 7920
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7922
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v5, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7924
    if-nez v1, :cond_3

    .line 7925
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v5, v7

    if-nez v5, :cond_2

    .line 7927
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7929
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7930
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 7932
    :cond_3
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7933
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7935
    .end local v0           #height:I
    .end local v1           #matrixIsIdentity:Z
    .end local v3           #oldWidth:I
    :cond_4
    return-void

    :cond_5
    move v1, v5

    .line 7897
    goto :goto_0

    .line 7907
    .restart local v1       #matrixIsIdentity:Z
    :cond_6
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 7908
    .restart local v2       #minLeft:I
    const/4 v4, 0x0

    .restart local v4       #xLoc:I
    goto :goto_1

    .line 7914
    .end local v2           #minLeft:I
    .end local v4           #xLoc:I
    :cond_7
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setLongClickable(Z)V
    .locals 2
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 5058
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5059
    return-void

    .line 5058
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 12993
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 12994
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 12996
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12997
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 13136
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 13137
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 13147
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 13148
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "nextFocusDownId"

    .prologue
    .line 4628
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 4629
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 0
    .parameter "nextFocusForwardId"

    .prologue
    .line 4649
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 4650
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "nextFocusLeftId"

    .prologue
    .line 4565
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 4566
    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "nextFocusRightId"

    .prologue
    .line 4586
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 4587
    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "nextFocusUpId"

    .prologue
    .line 4607
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 4608
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3548
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3549
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3551
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3552
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3586
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3589
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 3590
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3783
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 3784
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3463
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3464
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3764
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 3765
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3772
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 3773
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3748
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 3749
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3572
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3573
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3575
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3576
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 13383
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 13384
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 13385
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 13387
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3756
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 3757
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "overScrollMode"

    .prologue
    .line 13881
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 13884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13886
    :cond_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 13887
    return-void
.end method

.method public setPadding(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v6, 0x100

    const/4 v3, 0x0

    .line 12017
    const/4 v0, 0x0

    .line 12019
    .local v0, changed:Z
    iput-boolean v3, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 12021
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 12022
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 12023
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 12025
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 12028
    .local v2, viewFlags:I
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_1

    .line 12029
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    .line 12030
    and-int v4, v2, v6

    if-nez v4, :cond_7

    move v1, v3

    .line 12032
    .local v1, offset:I
    :goto_0
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_0

    .line 12048
    .end local v1           #offset:I
    :cond_0
    :goto_1
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_1

    .line 12049
    and-int v4, v2, v6

    if-nez v4, :cond_9

    :goto_2
    add-int/2addr p4, v3

    .line 12054
    :cond_1
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2

    .line 12055
    const/4 v0, 0x1

    .line 12056
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 12058
    :cond_2
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_3

    .line 12059
    const/4 v0, 0x1

    .line 12060
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 12062
    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_4

    .line 12063
    const/4 v0, 0x1

    .line 12064
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 12066
    :cond_4
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_5

    .line 12067
    const/4 v0, 0x1

    .line 12068
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 12071
    :cond_5
    if-eqz v0, :cond_6

    .line 12072
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12074
    :cond_6
    return-void

    .line 12030
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_0

    .line 12034
    .restart local v1       #offset:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v4

    const/high16 v5, 0x4000

    if-ne v4, v5, :cond_8

    .line 12035
    add-int/2addr p1, v1

    goto :goto_1

    .line 12037
    :cond_8
    add-int/2addr p3, v1

    .line 12039
    goto :goto_1

    .line 12041
    :pswitch_1
    add-int/2addr p3, v1

    .line 12042
    goto :goto_1

    .line 12044
    :pswitch_2
    add-int/2addr p1, v1

    goto :goto_1

    .line 12049
    .end local v1           #offset:I
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_2

    .line 12032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 12096
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 12098
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 12099
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 12101
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12107
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 12109
    :goto_0
    return-void

    .line 12103
    :pswitch_0
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 12101
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public setPivotX(F)V
    .locals 4
    .parameter "pivotX"

    .prologue
    const/4 v3, 0x0

    .line 7633
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7634
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7635
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7636
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7637
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7639
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7640
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 7641
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7642
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7643
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7645
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 4
    .parameter "pivotY"

    .prologue
    const/4 v3, 0x0

    .line 7676
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7677
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7678
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7679
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7680
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7682
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7683
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 7684
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7685
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7686
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7688
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 5071
    if-eqz p1, :cond_0

    .line 5072
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5076
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5077
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 5078
    return-void

    .line 5074
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public final setRight(I)V
    .locals 9
    .parameter "right"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7955
    iget v6, p0, Landroid/view/View;->mRight:I

    if-eq p1, v6, :cond_4

    .line 7956
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7957
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v1, v5

    .line 7959
    .local v1, matrixIsIdentity:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 7960
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 7962
    iget v6, p0, Landroid/view/View;->mRight:I

    if-ge p1, v6, :cond_6

    .line 7963
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 7967
    .local v2, maxRight:I
    :goto_1
    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 7974
    .end local v2           #maxRight:I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 7975
    .local v3, oldWidth:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v6

    .line 7977
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 7979
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7981
    if-nez v1, :cond_3

    .line 7982
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x2000

    and-int/2addr v4, v6

    if-nez v4, :cond_2

    .line 7984
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7986
    :cond_2
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7987
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7989
    :cond_3
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7990
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7992
    .end local v0           #height:I
    .end local v1           #matrixIsIdentity:Z
    .end local v3           #oldWidth:I
    :cond_4
    return-void

    :cond_5
    move v1, v4

    .line 7957
    goto :goto_0

    .line 7965
    .restart local v1       #matrixIsIdentity:Z
    :cond_6
    move v2, p1

    .restart local v2       #maxRight:I
    goto :goto_1

    .line 7971
    .end local v2           #maxRight:I
    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setRotation(F)V
    .locals 3
    .parameter "rotation"

    .prologue
    const/4 v2, 0x0

    .line 7422
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7423
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7424
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7425
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7427
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7428
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 7429
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7430
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7431
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7433
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 3
    .parameter "rotationX"

    .prologue
    const/4 v2, 0x0

    .line 7514
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7515
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7516
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7517
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7519
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7520
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 7521
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7522
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7523
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7525
    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 3
    .parameter "rotationY"

    .prologue
    const/4 v2, 0x0

    .line 7468
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7469
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7470
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7471
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7473
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7474
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 7475
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7476
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7477
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7479
    :cond_0
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 5135
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5136
    return-void

    :cond_0
    move v0, v1

    .line 5135
    goto :goto_0
.end method

.method public setSaveFromParentEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x2000

    .line 5196
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5197
    return-void

    :cond_0
    move v0, v1

    .line 5196
    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 3
    .parameter "scaleX"

    .prologue
    const/4 v2, 0x0

    .line 7552
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7553
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7554
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7555
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7557
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7558
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 7559
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7560
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7561
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7563
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 3
    .parameter "scaleY"

    .prologue
    const/4 v2, 0x0

    .line 7590
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7591
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7592
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7593
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7595
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7596
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 7597
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7598
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7599
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7601
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 9333
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    .line 9334
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9335
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 9336
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9338
    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 4472
    if-eqz p1, :cond_1

    .line 4473
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4474
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4475
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4477
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4484
    :goto_0
    return-void

    .line 4479
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4480
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4482
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollX(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 7087
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 7088
    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 7097
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 7098
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .parameter "fadeScrollbars"

    .prologue
    .line 9295
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 9296
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 9297
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 9298
    if-eqz p1, :cond_0

    .line 9299
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9303
    :goto_0
    return-void

    .line 9301
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 12204
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    if-eq v1, p1, :cond_2

    .line 12205
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12206
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 12207
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 12208
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12209
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 12211
    :cond_2
    return-void

    :cond_3
    move v1, v0

    .line 12204
    goto :goto_0
.end method

.method public setSoundEffect(I)V
    .locals 0
    .parameter "soundEffect"

    .prologue
    .line 3612
    iput p1, p0, Landroid/view/View;->mSoundEffect:I

    .line 3613
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 4841
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4842
    return-void

    .line 4841
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 13361
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_0

    .line 13362
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 13363
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 13364
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 13367
    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 12654
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 12655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12659
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 12660
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 12612
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 12613
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 12669
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 12670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12674
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 12675
    return-void
.end method

.method public setTextDirection(I)V
    .locals 1
    .parameter "textDirection"

    .prologue
    .line 13952
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    if-eq p1, v0, :cond_0

    .line 13953
    iput p1, p0, Landroid/view/View;->mTextDirection:I

    .line 13954
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 13955
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13957
    :cond_0
    return-void
.end method

.method public final setTop(I)V
    .locals 9
    .parameter "top"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7769
    iget v7, p0, Landroid/view/View;->mTop:I

    if-eq p1, v7, :cond_4

    .line 7770
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7771
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v0, v6

    .line 7773
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_7

    .line 7774
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 7777
    iget v7, p0, Landroid/view/View;->mTop:I

    if-ge p1, v7, :cond_6

    .line 7778
    move v1, p1

    .line 7779
    .local v1, minTop:I
    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v7

    .line 7784
    .local v4, yLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0, v5, v4, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 7791
    .end local v1           #minTop:I
    .end local v4           #yLoc:I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 7792
    .local v3, width:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v7

    .line 7794
    .local v2, oldHeight:I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 7796
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v3, v5, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7798
    if-nez v0, :cond_3

    .line 7799
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v5, v7

    if-nez v5, :cond_2

    .line 7801
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7803
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7804
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 7806
    :cond_3
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7807
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7809
    .end local v0           #matrixIsIdentity:Z
    .end local v2           #oldHeight:I
    .end local v3           #width:I
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 7771
    goto :goto_0

    .line 7781
    .restart local v0       #matrixIsIdentity:Z
    :cond_6
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 7782
    .restart local v1       #minTop:I
    const/4 v4, 0x0

    .restart local v4       #yLoc:I
    goto :goto_1

    .line 7788
    .end local v1           #minTop:I
    .end local v4           #yLoc:I
    :cond_7
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 6835
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 6836
    return-void
.end method

.method public setTranslationX(F)V
    .locals 3
    .parameter "translationX"

    .prologue
    const/4 v2, 0x0

    .line 8061
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8062
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8063
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 8064
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8066
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8067
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 8068
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8069
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8070
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8072
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 3
    .parameter "translationY"

    .prologue
    const/4 v2, 0x0

    .line 8097
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8098
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8099
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 8100
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8102
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8103
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 8104
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8105
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8106
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8108
    :cond_0
    return-void
.end method

.method public setVelocityPolynomialType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 15267
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 15269
    .local v0, viewroot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 15271
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setVelocityPolynomialType(I)V

    .line 15274
    :cond_0
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 9154
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 9155
    if-eqz p1, :cond_0

    .line 9156
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 9159
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9161
    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 9274
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9275
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9276
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 9277
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9279
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3434
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 3435
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 3436
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3437
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3439
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4750
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 4751
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4752
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 4751
    goto :goto_0
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 4994
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4995
    return-void

    .line 4994
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 4971
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4972
    return-void

    .line 4971
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setX(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 8013
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 8014
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 8035
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 8036
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 3728
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 3740
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 13166
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 13167
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 13168
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 13170
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 23
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 13567
    const/16 v19, 0x0

    .line 13569
    .local v19, okay:Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 13570
    .local v21, shadowSize:Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 13571
    .local v22, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 13573
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    .line 13575
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13582
    :cond_1
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 13584
    .local v8, surface:Landroid/view/Surface;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 13588
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_2

    .line 13589
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 13591
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13592
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13594
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 13597
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 13600
    .local v20, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 13603
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 13605
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 13612
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 13619
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    .end local v20           #root:Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    return v19

    .line 13594
    .restart local v11       #token:Landroid/os/IBinder;
    .restart local v17       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13614
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v18

    .line 13615
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13616
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_0
.end method

.method unFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3915
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3916
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3918
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3919
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3921
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 11653
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 11654
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11656
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 11634
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 11635
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 11636
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 11641
    :cond_0
    :goto_0
    return-void

    .line 11638
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)V
    .locals 3
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 13402
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 13403
    .local v0, val:I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_0

    .line 13404
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13406
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 11689
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 5004
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4981
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

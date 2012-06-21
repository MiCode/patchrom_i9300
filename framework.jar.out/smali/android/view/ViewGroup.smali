.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawLayers:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mHoveredSelf:Z

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4926
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 375
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 376
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4926
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 380
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 381
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 385
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4926
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 386
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 388
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4819
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4821
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 4822
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4825
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4826
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3405
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3406
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3407
    .local v1, count:I
    array-length v2, v0

    .line 3408
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 3409
    if-ne v2, v1, :cond_0

    .line 3410
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3411
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3412
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3414
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3432
    :cond_1
    :goto_0
    return-void

    .line 3415
    :cond_2
    if-ge p2, v1, :cond_4

    .line 3416
    if-ne v2, v1, :cond_3

    .line 3417
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3418
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3419
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3420
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3424
    :goto_1
    aput-object p1, v0, p2

    .line 3425
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3426
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 3427
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 3422
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3430
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 1853
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 1854
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1855
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1856
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 3344
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_0

    .line 3347
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3350
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3351
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3355
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_2

    .line 3356
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3359
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3360
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3363
    :cond_3
    if-eqz p4, :cond_9

    .line 3364
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3369
    :goto_0
    if-gez p2, :cond_4

    .line 3370
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3373
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3376
    if-eqz p4, :cond_a

    .line 3377
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3382
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3383
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3386
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3387
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    .line 3388
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3389
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3390
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3391
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_6

    .line 3392
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3394
    :cond_6
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3397
    .end local v1           #lastKeepOn:Z
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3399
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 3400
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3402
    :cond_8
    return-void

    .line 3366
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_9
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3379
    :cond_a
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 3492
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3493
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3494
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 1890
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1813
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 1814
    const/4 v8, 0x0

    .line 1815
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_0

    .line 1816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1817
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1819
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1820
    const/4 v8, 0x1

    .line 1823
    .end local v0           #now:J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 1824
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1825
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 1823
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 1827
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1829
    if-eqz v8, :cond_2

    .line 1830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1833
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 1798
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1799
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 1801
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1802
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1803
    move-object v1, v0

    .line 1804
    if-nez v1, :cond_0

    .line 1805
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1807
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .parameter "event"
    .parameter "child"

    .prologue
    .line 1585
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 1586
    .local v1, offsetX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 1589
    .local v2, offsetY:F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1590
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1591
    .local v3, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1592
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1593
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1594
    .local v0, handled:Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1600
    .end local v3           #transformedEvent:Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 1596
    .end local v0           #handled:Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1597
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1598
    .restart local v0       #handled:Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    const/4 v7, 0x3

    .line 1930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1931
    .local v4, oldAction:I
    if-nez p2, :cond_0

    if-ne v4, v7, :cond_2

    .line 1932
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1933
    if-nez p3, :cond_1

    .line 1934
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1938
    .local v0, handled:Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1993
    .end local v0           #handled:Z
    :goto_1
    return v0

    .line 1936
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_0

    .line 1943
    .end local v0           #handled:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 1944
    .local v5, oldPointerIdBits:I
    and-int v1, v5, p4

    .line 1948
    .local v1, newPointerIdBits:I
    if-nez v1, :cond_3

    .line 1949
    const/4 v0, 0x0

    goto :goto_1

    .line 1957
    :cond_3
    if-ne v1, v5, :cond_7

    .line 1958
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1959
    :cond_4
    if-nez p3, :cond_5

    .line 1960
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_1

    .line 1962
    .end local v0           #handled:Z
    :cond_5
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 1963
    .local v2, offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 1964
    .local v3, offsetY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1966
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1968
    .restart local v0       #handled:Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 1972
    .end local v0           #handled:Z
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 1978
    .local v6, transformedEvent:Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 1979
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1992
    .restart local v0       #handled:Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 1974
    .end local v0           #handled:Z
    .end local v6           #transformedEvent:Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6       #transformedEvent:Landroid/view/MotionEvent;
    goto :goto_2

    .line 1981
    :cond_8
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 1982
    .restart local v2       #offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 1983
    .restart local v3       #offsetY:F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1984
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1985
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1988
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_3
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 4836
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4837
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 4838
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4839
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4841
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 4842
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4845
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4846
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4850
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4851
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4854
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 4855
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 4858
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4860
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4862
    :cond_3
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 4735
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4736
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4738
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4740
    .local v2, size:I
    const/4 v1, 0x0

    .line 4741
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 4743
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 4799
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 4746
    :sswitch_0
    if-ltz p2, :cond_1

    .line 4747
    move v1, p2

    .line 4748
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4749
    :cond_1
    if-ne p2, v8, :cond_2

    .line 4751
    move v1, v2

    .line 4752
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4753
    :cond_2
    if-ne p2, v7, :cond_0

    .line 4756
    move v1, v2

    .line 4757
    const/high16 v0, -0x8000

    goto :goto_0

    .line 4763
    :sswitch_1
    if-ltz p2, :cond_3

    .line 4765
    move v1, p2

    .line 4766
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4767
    :cond_3
    if-ne p2, v8, :cond_4

    .line 4770
    move v1, v2

    .line 4771
    const/high16 v0, -0x8000

    goto :goto_0

    .line 4772
    :cond_4
    if-ne p2, v7, :cond_0

    .line 4775
    move v1, v2

    .line 4776
    const/high16 v0, -0x8000

    goto :goto_0

    .line 4782
    :sswitch_2
    if-ltz p2, :cond_5

    .line 4784
    move v1, p2

    .line 4785
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4786
    :cond_5
    if-ne p2, v8, :cond_6

    .line 4789
    const/4 v1, 0x0

    .line 4790
    const/4 v0, 0x0

    goto :goto_0

    .line 4791
    :cond_6
    if-ne p2, v7, :cond_0

    .line 4794
    const/4 v1, 0x0

    .line 4795
    const/4 v0, 0x0

    goto :goto_0

    .line 4743
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"

    .prologue
    .line 1840
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 1841
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 1845
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 1840
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 1845
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 412
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 415
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 416
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 417
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 418
    .local v3, attr:I
    packed-switch v3, :pswitch_data_0

    .line 416
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    :pswitch_0
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 423
    :pswitch_1
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 426
    :pswitch_2
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 429
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 432
    :pswitch_4
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 435
    :pswitch_5
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 438
    :pswitch_6
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 439
    .local v5, id:I
    if-lez v5, :cond_0

    .line 440
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 444
    .end local v5           #id:I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 450
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 453
    :pswitch_9
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 454
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_0

    .line 455
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 461
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    return-void

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v0, 0x80

    .line 392
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 393
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 394
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 395
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 396
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 397
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 399
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 400
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 403
    :cond_0
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 405
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 408
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 409
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 2571
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2572
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2574
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 2575
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 2580
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2583
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 2584
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2585
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 2586
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2590
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2591
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "event"

    .prologue
    .line 1527
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3436
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3437
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3438
    :cond_0
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3440
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3441
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 3442
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 3449
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    .line 3450
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3451
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3455
    :cond_2
    :goto_1
    return-void

    .line 3443
    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 3444
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3445
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 3447
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3452
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 3453
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3459
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3460
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3462
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3463
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3465
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 3489
    :goto_0
    return-void

    .line 3469
    :cond_0
    if-ne v2, v1, :cond_1

    .line 3470
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 3471
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3472
    aput-object v5, v0, v3

    .line 3470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3475
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 3476
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3475
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3481
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3483
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 3484
    aput-object v5, v0, v3

    .line 3483
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3488
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .parameter "pointerIdBits"

    .prologue
    .line 1863
    const/4 v1, 0x0

    .line 1864
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1865
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 1866
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1867
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 1868
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1869
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 1870
    if-nez v1, :cond_0

    .line 1871
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1875
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1876
    move-object v2, v0

    .line 1877
    goto :goto_0

    .line 1873
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 1880
    :cond_1
    move-object v1, v2

    .line 1881
    move-object v2, v0

    .line 1882
    goto :goto_0

    .line 1883
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "view"

    .prologue
    .line 3581
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 3582
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3585
    :cond_0
    const/4 v0, 0x0

    .line 3586
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 3587
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3588
    const/4 v0, 0x1

    .line 3591
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3593
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3598
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3600
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3602
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3604
    if-eqz v0, :cond_4

    .line 3605
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3607
    :cond_4
    return-void

    .line 3594
    :cond_5
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 3595
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3573
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3574
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3575
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3577
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 3643
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3644
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 3645
    .local v2, detach:Z
    :goto_0
    const/4 v1, 0x0

    .line 3647
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3648
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 3650
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 3651
    aget-object v6, v0, v5

    .line 3653
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_0

    .line 3654
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3657
    :cond_0
    if-ne v6, v4, :cond_1

    .line 3658
    invoke-virtual {v6}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3659
    move-object v1, v6

    .line 3662
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3664
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3669
    :cond_3
    :goto_2
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3671
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3650
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_4
    move v2, v7

    .line 3644
    goto :goto_0

    .line 3665
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_3

    .line 3666
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 3674
    .end local v6           #view:Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3676
    if-eqz v1, :cond_7

    .line 3677
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3679
    :cond_7
    return-void
.end method

.method private resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 1787
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1788
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1789
    const/4 v0, 0x1

    .line 1791
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 1777
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1778
    invoke-direct {p0, p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1779
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1780
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4434
    if-eqz p2, :cond_0

    .line 4435
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4439
    :goto_0
    return-void

    .line 4437
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
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
    .line 781
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 782
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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
    .line 789
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 791
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 793
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 794
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 795
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 797
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 798
    aget-object v0, v1, v5

    .line 799
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 800
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 797
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 809
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 813
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 815
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 5100
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 867
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 869
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 870
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 872
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 873
    aget-object v0, v1, v3

    .line 874
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 875
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 872
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 878
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3159
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3160
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 3172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3173
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3175
    if-nez v0, :cond_0

    .line 3176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3179
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3180
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3189
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3190
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3191
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3192
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3193
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3222
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3223
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 3202
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3203
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 3326
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3327
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3328
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3329
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3508
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3510
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 3511
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3512
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3515
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3516
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3517
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 3794
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3796
    if-gez p2, :cond_0

    .line 3797
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3800
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3802
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3803
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3805
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3807
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3808
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3810
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 991
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 992
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 993
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 994
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 996
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 4259
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

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
    .line 3242
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5108
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 5109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5111
    :cond_0
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3338
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3339
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 671
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 674
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 4808
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4809
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4811
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 684
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 687
    :cond_0
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2410
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2411
    .local v2, count:I
    const/4 v4, 0x0

    .line 2413
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 2414
    new-array v4, v2, [I

    .line 2415
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2416
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2417
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2418
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 2419
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2424
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2426
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 2427
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 2428
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2427
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2432
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .parameter "depth"

    .prologue
    .line 4577
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4580
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 4581
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4582
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4583
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 4586
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4587
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4588
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4591
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4592
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4593
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4596
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 4597
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4598
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4599
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3880
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3881
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 3892
    :cond_0
    return-void

    .line 3885
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3886
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3888
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 3889
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3890
    aput-object v4, v0, v2

    .line 3888
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 3845
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3846
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3827
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3828
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3864
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3865
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 2211
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x40

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2212
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2213
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2215
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 2217
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2218
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2219
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2220
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2222
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 977
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 978
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 979
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 980
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 981
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 982
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 957
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 958
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 959
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 960
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 961
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_0
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 5
    .parameter "consistency"

    .prologue
    .line 4522
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 4524
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4525
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4526
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4527
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 4526
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4530
    :cond_1
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2265
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2268
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 2271
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 2272
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_0

    .line 2273
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 2274
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 2277
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2278
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2279
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2280
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2282
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2283
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 885
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 886
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 887
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 888
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 889
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 1005
    const/4 v11, 0x0

    .line 1006
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1007
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1009
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1012
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1156
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    .line 1158
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1160
    :cond_1
    return v11

    .line 1015
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1018
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1020
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1026
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1027
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1028
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1029
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_4

    .line 1030
    aget-object v5, v6, v9

    .line 1031
    .local v5, child:Landroid/view/View;
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1032
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 1033
    aget-object v17, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 1034
    .local v8, handled:Z
    if-eqz v8, :cond_2

    .line 1035
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1029
    .end local v8           #handled:Z
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1022
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1041
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1042
    const/4 v11, 0x1

    goto :goto_0

    .line 1048
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1051
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1052
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1053
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 1056
    .end local v5           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1058
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1063
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1064
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1070
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1078
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 1079
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1081
    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1083
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1085
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1086
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1087
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1088
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1090
    .end local v16           #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1093
    if-eqz v13, :cond_8

    .line 1094
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1095
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1096
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1097
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1099
    :cond_8
    move-object/from16 v0, p1

    iput v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1103
    .end local v4           #action:I
    :cond_9
    if-eqz v13, :cond_0

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1107
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1109
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1110
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1127
    .end local v13           #target:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1129
    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1130
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1131
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1133
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 1139
    .end local v16           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1140
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1144
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1145
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1146
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 2440
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2441
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2442
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2444
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2445
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 2447
    .local v6, cache:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_2

    const/4 v5, 0x1

    .line 2448
    .local v5, buildCache:Z
    :goto_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_3

    .line 2449
    aget-object v7, v8, v18

    .line 2450
    .local v7, child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_0

    .line 2451
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2452
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2, v11}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 2453
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 2454
    if-eqz v6, :cond_0

    .line 2455
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2456
    if-eqz v5, :cond_0

    .line 2457
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2448
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2445
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2447
    .restart local v6       #cache:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2463
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2464
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2468
    :cond_4
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 2470
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2471
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2473
    if-eqz v6, :cond_5

    .line 2474
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2477
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2482
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_6
    const/16 v21, 0x0

    .line 2483
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 2484
    .local v9, clipToPadding:Z
    :goto_3
    if-eqz v9, :cond_7

    .line 2485
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 2486
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2493
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2494
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2496
    const/16 v19, 0x0

    .line 2497
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 2499
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 2500
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 2501
    aget-object v7, v8, v18

    .line 2502
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 2503
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2500
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 2483
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2507
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_b
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 2508
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 2509
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 2510
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2507
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 2516
    .end local v7           #child:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 2517
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2518
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v13, v22, -0x1

    .line 2520
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_6
    if-ltz v18, :cond_f

    .line 2521
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2522
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2520
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 2526
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_f
    if-eqz v9, :cond_10

    .line 2527
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2531
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2533
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 2534
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2537
    :cond_11
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_12

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v19, :cond_12

    .line 2542
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2543
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 2548
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2550
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_12
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2198
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2199
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2200
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2201
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2202
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2204
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
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
    .line 2324
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2325
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1568
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1569
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1573
    :goto_0
    return v0

    .line 1570
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1571
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1573
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 1539
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1540
    .local v2, childrenCount:I
    if-eqz v2, :cond_2

    .line 1541
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1542
    .local v1, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1543
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1545
    .local v5, y:F
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1546
    aget-object v0, v1, v3

    .line 1547
    .local v0, child:Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v0, v6}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1545
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1552
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1553
    const/4 v6, 0x1

    .line 1559
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #x:F
    .end local v5           #y:F
    :goto_1
    return v6

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x8000

    .line 2603
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2604
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2605
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2606
    aget-object v0, v1, v3

    .line 2607
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasStaticLayer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2609
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2610
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2611
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 2612
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2605
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2609
    goto :goto_1

    .line 2615
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 1304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1307
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1308
    .local v13, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1310
    move-object/from16 v8, p1

    .line 1311
    .local v8, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v10, 0x0

    .line 1315
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1316
    .local v9, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1317
    if-nez v13, :cond_3

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v4, v0, :cond_3

    .line 1318
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 1319
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1320
    .local v20, y:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1321
    .local v7, childrenCount:I
    if-eqz v7, :cond_3

    .line 1322
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1323
    .local v6, children:[Landroid/view/View;
    const/4 v14, 0x0

    .line 1324
    .local v14, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v12, v7, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_3

    .line 1325
    aget-object v5, v6, v12

    .line 1326
    .local v5, child:Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1324
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 1333
    :cond_1
    move-object v11, v9

    .line 1335
    .local v11, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v17, 0x0

    .line 1336
    .local v17, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_1
    if-nez v11, :cond_4

    .line 1337
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v11

    .line 1338
    const/16 v18, 0x0

    .line 1358
    .local v18, wasHovered:Z
    :goto_2
    if-eqz v14, :cond_7

    .line 1359
    iput-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1366
    :goto_3
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_8

    .line 1367
    if-nez v18, :cond_2

    .line 1369
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1388
    :cond_2
    :goto_4
    if-eqz v10, :cond_0

    .line 1396
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_3
    :goto_5
    if-eqz v9, :cond_c

    .line 1397
    iget-object v5, v9, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1400
    .restart local v5       #child:Landroid/view/View;
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 1402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1418
    :goto_6
    iget-object v0, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v16, v0

    .line 1419
    .local v16, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v9}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1420
    move-object/from16 v9, v16

    .line 1421
    goto :goto_5

    .line 1342
    .end local v16           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #childrenCount:I
    .restart local v11       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v12       #i:I
    .restart local v14       #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v17       #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_4
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_6

    .line 1343
    if-eqz v17, :cond_5

    .line 1344
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1348
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1349
    const/16 v18, 0x1

    .line 1350
    .restart local v18       #wasHovered:Z
    goto :goto_2

    .line 1346
    .end local v18           #wasHovered:Z
    :cond_5
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_7

    .line 1353
    :cond_6
    move-object/from16 v17, v11

    .line 1354
    iget-object v11, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1361
    .restart local v18       #wasHovered:Z
    :cond_7
    move-object v14, v11

    .line 1362
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 1372
    :cond_8
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 1373
    if-nez v18, :cond_9

    .line 1375
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1376
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1377
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1379
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1381
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1385
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1407
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_a
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_b

    .line 1408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1411
    :cond_b
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1412
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1413
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1415
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_6

    .line 1424
    .end local v5           #child:Landroid/view/View;
    :cond_c
    if-nez v10, :cond_f

    const/4 v15, 0x1

    .line 1425
    .local v15, newHoveredSelf:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_10

    .line 1426
    if-eqz v15, :cond_d

    .line 1428
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1470
    :cond_d
    :goto_9
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_e

    .line 1471
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1475
    :cond_e
    return v10

    .line 1424
    .end local v15           #newHoveredSelf:Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_8

    .line 1431
    .restart local v15       #newHoveredSelf:Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1433
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_12

    .line 1435
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1447
    :goto_a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1450
    :cond_11
    if-eqz v15, :cond_d

    .line 1452
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_14

    .line 1454
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1455
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_9

    .line 1439
    :cond_12
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    .line 1440
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1442
    :cond_13
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1443
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1444
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1445
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_a

    .line 1456
    :cond_14
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_d

    .line 1458
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1459
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1460
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1461
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1463
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1464
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1240
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1241
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1244
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1245
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1257
    :cond_1
    :goto_0
    return v0

    .line 1248
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1249
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1254
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1255
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1257
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1227
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1228
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1232
    :goto_0
    return v0

    .line 1229
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1230
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1265
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1266
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1270
    :goto_0
    return v0

    .line 1267
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1268
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 2226
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2227
    .local v2, handled:Z
    if-eqz v2, :cond_0

    move v4, v2

    .line 2240
    :goto_0
    return v4

    .line 2231
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 2232
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2233
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1

    .line 2234
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2235
    if-eqz v2, :cond_1

    move v4, v2

    .line 2236
    goto :goto_0

    .line 2231
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2240
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
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
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2332
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2333
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2334
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2335
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2336
    aget-object v0, v1, v3

    .line 2337
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2338
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2335
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2341
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
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
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2304
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2305
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2306
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2307
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2308
    aget-object v0, v1, v3

    .line 2309
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2310
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2307
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2313
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .parameter "activated"

    .prologue
    .line 3026
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3027
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3028
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3029
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3028
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3031
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 3035
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3036
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3037
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3038
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3037
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3040
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 3014
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3015
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3016
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3017
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3016
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3019
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2183
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2184
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2185
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2186
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2187
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2189
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1200
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1202
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1203
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1204
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1205
    aget-object v0, v1, v3

    .line 1206
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1208
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
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
    .line 2352
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2353
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1612
    :cond_0
    const/4 v14, 0x0

    .line 1613
    .local v14, handled:Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1614
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1615
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 1618
    .local v6, actionMasked:I
    if-nez v6, :cond_1

    .line 1622
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1623
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1628
    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1630
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x8

    and-int v26, v26, v27

    if-eqz v26, :cond_7

    const/4 v13, 0x1

    .line 1631
    .local v13, disallowIntercept:Z
    :goto_0
    if-nez v13, :cond_8

    .line 1632
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 1633
    .local v18, intercepted:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1644
    .end local v13           #disallowIntercept:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_3

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v6, v0, :cond_a

    :cond_3
    const/4 v9, 0x1

    .line 1650
    .local v9, canceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_b

    const/16 v22, 0x1

    .line 1652
    .local v22, split:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/SplitMotionController;->getInstance(Landroid/content/Context;)Landroid/view/SplitMotionController;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/SplitMotionController;->checkAndConvertSplitMotion(Z)Z

    move-result v22

    .line 1655
    const/16 v19, 0x0

    .line 1656
    .local v19, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 1657
    .local v7, alreadyDispatchedToNewTouchTarget:Z
    if-nez v9, :cond_11

    if-nez v18, :cond_11

    .line 1658
    if-eqz v6, :cond_5

    if-eqz v22, :cond_4

    const/16 v26, 0x5

    move/from16 v0, v26

    if-eq v6, v0, :cond_5

    :cond_4
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_11

    .line 1661
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1662
    .local v5, actionIndex:I
    if-eqz v22, :cond_c

    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v16, v26, v27

    .line 1667
    .local v16, idBitsToAssign:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 1669
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1670
    .local v12, childrenCount:I
    if-eqz v12, :cond_e

    .line 1673
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1674
    .local v11, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    .line 1675
    .local v24, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    .line 1677
    .local v25, y:F
    add-int/lit8 v15, v12, -0x1

    .local v15, i:I
    :goto_5
    if-ltz v15, :cond_e

    .line 1678
    aget-object v10, v11, v15

    .line 1679
    .local v10, child:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v26

    if-nez v26, :cond_d

    .line 1677
    :cond_6
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 1630
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v12           #childrenCount:I
    .end local v15           #i:I
    .end local v16           #idBitsToAssign:I
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1635
    .restart local v13       #disallowIntercept:Z
    :cond_8
    const/16 v18, 0x0

    .restart local v18       #intercepted:Z
    goto/16 :goto_1

    .line 1640
    .end local v13           #disallowIntercept:Z
    .end local v18           #intercepted:Z
    :cond_9
    const/16 v18, 0x1

    .restart local v18       #intercepted:Z
    goto/16 :goto_1

    .line 1644
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1650
    .restart local v9       #canceled:Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1662
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_c
    const/16 v16, -0x1

    goto :goto_4

    .line 1684
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v12       #childrenCount:I
    .restart local v15       #i:I
    .restart local v16       #idBitsToAssign:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 1685
    if-eqz v19, :cond_f

    .line 1688
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1706
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_e
    :goto_6
    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    .line 1710
    :goto_7
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 1711
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    goto :goto_7

    .line 1692
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v15       #i:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1693
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1695
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 1696
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 1697
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 1698
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 1699
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 1700
    const/4 v7, 0x1

    .line 1701
    goto :goto_6

    .line 1713
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_10
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1719
    .end local v5           #actionIndex:I
    .end local v12           #childrenCount:I
    .end local v16           #idBitsToAssign:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-nez v26, :cond_16

    .line 1721
    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v14

    .line 1756
    :cond_12
    if-nez v9, :cond_13

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v6, v0, :cond_13

    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_1d

    .line 1759
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1767
    .end local v4           #action:I
    .end local v6           #actionMasked:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    :cond_14
    :goto_8
    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1770
    :cond_15
    return v14

    .line 1726
    .restart local v4       #action:I
    .restart local v6       #actionMasked:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v9       #canceled:Z
    .restart local v18       #intercepted:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_16
    const/16 v21, 0x0

    .line 1727
    .local v21, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 1728
    .local v23, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_9
    if-eqz v23, :cond_12

    .line 1729
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    .line 1730
    .local v20, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_18

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 1731
    const/4 v14, 0x1

    .line 1750
    :cond_17
    move-object/from16 v21, v23

    .line 1751
    move-object/from16 v23, v20

    .line 1752
    goto :goto_9

    .line 1733
    :cond_18
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_19

    if-eqz v18, :cond_1b

    :cond_19
    const/4 v8, 0x1

    .line 1735
    .local v8, cancelChild:Z
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1737
    const/4 v14, 0x1

    .line 1739
    :cond_1a
    if-eqz v8, :cond_17

    .line 1740
    if-nez v21, :cond_1c

    .line 1741
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1745
    :goto_b
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1746
    move-object/from16 v23, v20

    .line 1747
    goto :goto_9

    .line 1733
    .end local v8           #cancelChild:Z
    :cond_1b
    const/4 v8, 0x0

    goto :goto_a

    .line 1743
    .restart local v8       #cancelChild:Z
    :cond_1c
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_b

    .line 1760
    .end local v8           #cancelChild:Z
    .end local v20           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v21           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_1d
    if-eqz v22, :cond_14

    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v6, v0, :cond_14

    .line 1761
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1762
    .restart local v5       #actionIndex:I
    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v17, v26, v27

    .line 1763
    .local v17, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_8
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1278
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1282
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1283
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1295
    :cond_1
    :goto_0
    return v0

    .line 1286
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1287
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1292
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1293
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1295
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 658
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 931
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 932
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 933
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 934
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 935
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 937
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 854
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 855
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 856
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 857
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 858
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 944
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 945
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 946
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 947
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 948
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 62
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 2629
    const/16 v47, 0x0

    .line 2631
    .local v47, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v32, v0

    .line 2632
    .local v32, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v35, v0

    .line 2633
    .local v35, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v34, v0

    .line 2634
    .local v34, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v30, v0

    .line 2636
    .local v30, cb:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v31

    .line 2638
    .local v31, childHasIdentityMatrix:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v37, v0

    .line 2640
    .local v37, flags:I
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x100

    const/16 v7, 0x100

    if-ne v6, v7, :cond_0

    .line 2641
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 2642
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, -0x101

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2645
    :cond_0
    const/16 v60, 0x0

    .line 2647
    .local v60, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2648
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v33, 0x0

    .line 2650
    .local v33, concatMatrix:Z
    const/16 v51, 0x0

    .line 2652
    .local v51, scalingRequired:Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v6, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayerType()I

    move-result v45

    .line 2654
    .local v45, layerType:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v38

    .line 2655
    .local v38, hardwareAccelerated:Z
    const v6, 0x8000

    and-int v6, v6, v37

    const v7, 0x8000

    if-eq v6, v7, :cond_1

    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x4000

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_7

    .line 2657
    :cond_1
    const/16 v29, 0x1

    .line 2658
    .local v29, caching:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v6, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v51, v0

    .line 2663
    :cond_2
    :goto_1
    if-eqz v5, :cond_f

    .line 2664
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v42

    .line 2665
    .local v42, initialized:Z
    if-nez v42, :cond_3

    .line 2666
    sub-int v6, v34, v32

    sub-int v7, v30, v35

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2667
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 2668
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 2671
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-eqz v51, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    :goto_2
    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1, v7, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v47

    .line 2673
    if-eqz v51, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_b

    .line 2674
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v6, :cond_4

    .line 2675
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2677
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2678
    .local v11, invalidationTransform:Landroid/view/animation/Transformation;
    const/high16 v6, 0x3f80

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1, v11, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 2682
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 2684
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v33

    .line 2686
    if-eqz v47, :cond_5

    .line 2687
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2688
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x90

    const/16 v7, 0x80

    if-ne v6, v7, :cond_c

    .line 2690
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2725
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    :cond_5
    :goto_4
    if-nez v31, :cond_12

    const/4 v6, 0x1

    :goto_5
    or-int v33, v33, v6

    .line 2729
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2731
    if-nez v33, :cond_13

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v34

    int-to-float v15, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_13

    .line 2955
    :goto_6
    return v47

    .line 2652
    .end local v29           #caching:Z
    .end local v38           #hardwareAccelerated:Z
    .end local v45           #layerType:I
    :cond_6
    const/16 v45, 0x0

    goto/16 :goto_0

    .line 2660
    .restart local v38       #hardwareAccelerated:Z
    .restart local v45       #layerType:I
    :cond_7
    if-nez v45, :cond_8

    if-eqz v38, :cond_9

    :cond_8
    const/16 v29, 0x1

    .restart local v29       #caching:Z
    :goto_7
    goto/16 :goto_1

    .end local v29           #caching:Z
    :cond_9
    const/16 v29, 0x0

    goto :goto_7

    .line 2671
    .restart local v29       #caching:Z
    .restart local v42       #initialized:Z
    :cond_a
    const/high16 v6, 0x3f80

    goto/16 :goto_2

    .line 2680
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .restart local v11       #invalidationTransform:Landroid/view/animation/Transformation;
    goto :goto_3

    .line 2691
    :cond_c
    and-int/lit8 v6, v37, 0x4

    if-nez v6, :cond_5

    .line 2694
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x40

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2695
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v35

    move/from16 v3, v34

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_4

    .line 2698
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v6, :cond_e

    .line 2699
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2701
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2702
    .local v10, region:Landroid/graphics/RectF;
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 2706
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x40

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2708
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v46, v32, v6

    .line 2709
    .local v46, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v56, v35, v6

    .line 2710
    .local v56, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v6, v6, v46

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int v7, v7, v56

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_4

    .line 2714
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    .end local v46           #left:I
    .end local v56           #top:I
    :cond_f
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x800

    const/16 v7, 0x800

    if-ne v6, v7, :cond_5

    .line 2716
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v41

    .line 2717
    .local v41, hasTransform:Z
    if-eqz v41, :cond_5

    .line 2718
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v61

    .line 2719
    .local v61, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v61

    if-eq v0, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 2721
    :goto_8
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v61

    if-eqz v6, :cond_11

    const/16 v33, 0x1

    :goto_9
    goto/16 :goto_4

    .line 2719
    :cond_10
    const/16 v60, 0x0

    goto :goto_8

    .line 2721
    :cond_11
    const/16 v33, 0x0

    goto :goto_9

    .line 2725
    .end local v41           #hasTransform:Z
    .end local v61           #transformType:I
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2736
    :cond_13
    if-eqz v38, :cond_14

    .line 2739
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_29

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p2

    iput-boolean v6, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2740
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2743
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 2745
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v54, v0

    .line 2746
    .local v54, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v55, v0

    .line 2748
    .local v55, sy:I
    const/16 v36, 0x0

    .line 2749
    .local v36, displayList:Landroid/view/DisplayList;
    const/16 v27, 0x0

    .line 2750
    .local v27, cache:Landroid/graphics/Bitmap;
    const/16 v39, 0x0

    .line 2751
    .local v39, hasDisplayList:Z
    if-eqz v29, :cond_16

    .line 2752
    if-nez v38, :cond_2a

    .line 2753
    if-eqz v45, :cond_15

    .line 2754
    const/16 v45, 0x1

    .line 2755
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2757
    :cond_15
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2773
    :cond_16
    :goto_b
    if-eqz v27, :cond_17

    if-eqz v39, :cond_2b

    :cond_17
    const/16 v40, 0x1

    .line 2774
    .local v40, hasNoCache:Z
    :goto_c
    if-nez v27, :cond_2c

    if-nez v39, :cond_2c

    const/4 v6, 0x2

    move/from16 v0, v45

    if-eq v0, v6, :cond_2c

    const/16 v48, 0x1

    .line 2777
    .local v48, offsetForScroll:Z
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v49

    .line 2778
    .local v49, restoreTo:I
    if-eqz v48, :cond_2d

    .line 2779
    sub-int v6, v32, v54

    int-to-float v6, v6

    sub-int v7, v35, v55

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2789
    :cond_18
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v26

    .line 2790
    .local v26, alpha:F
    if-nez v60, :cond_19

    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-ltz v6, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_31

    .line 2791
    :cond_19
    if-nez v60, :cond_1a

    if-nez v31, :cond_1e

    .line 2792
    :cond_1a
    const/16 v57, 0x0

    .line 2793
    .local v57, transX:I
    const/16 v58, 0x0

    .line 2795
    .local v58, transY:I
    if-eqz v48, :cond_1b

    .line 2796
    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v57, v0

    .line 2797
    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v58, v0

    .line 2800
    :cond_1b
    if-eqz v60, :cond_1d

    .line 2801
    if-eqz v33, :cond_1c

    .line 2804
    move/from16 v0, v57

    neg-int v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2805
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2806
    move/from16 v0, v57

    int-to-float v6, v0

    move/from16 v0, v58

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2807
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2810
    :cond_1c
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v59

    .line 2811
    .local v59, transformAlpha:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v59, v6

    if-gez v6, :cond_1d

    .line 2812
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    mul-float v26, v26, v6

    .line 2813
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2817
    .end local v59           #transformAlpha:F
    :cond_1d
    if-nez v31, :cond_1e

    .line 2818
    move/from16 v0, v57

    neg-int v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2819
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2820
    move/from16 v0, v57

    int-to-float v6, v0

    move/from16 v0, v58

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2824
    .end local v57           #transX:I
    .end local v58           #transY:I
    :cond_1e
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_21

    .line 2825
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2826
    if-eqz v40, :cond_21

    .line 2827
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v0, v6

    move/from16 v17, v0

    .line 2828
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_30

    .line 2829
    const/16 v18, 0x4

    .line 2830
    .local v18, layerFlags:I
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1f

    if-eqz v45, :cond_20

    .line 2832
    :cond_1f
    or-int/lit8 v18, v18, 0x10

    .line 2834
    :cond_20
    if-nez v45, :cond_21

    .line 2835
    if-eqz v39, :cond_2e

    const/16 v52, 0x0

    .line 2836
    .local v52, scrollX:I
    :goto_f
    if-eqz v39, :cond_2f

    const/16 v53, 0x0

    .line 2837
    .local v53, scrollY:I
    :goto_10
    move/from16 v0, v52

    int-to-float v13, v0

    move/from16 v0, v53

    int-to-float v14, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v15, v6

    add-int v6, v53, v30

    sub-int v6, v6, v35

    int-to-float v0, v6

    move/from16 v16, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2851
    .end local v17           #multipliedAlpha:I
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_21
    :goto_11
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    .line 2852
    if-eqz v48, :cond_32

    .line 2853
    sub-int v6, v34, v32

    add-int v6, v6, v54

    sub-int v7, v30, v35

    add-int v7, v7, v55

    move-object/from16 v0, p1

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2863
    :cond_22
    :goto_12
    if-eqz v39, :cond_23

    .line 2864
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v36

    .line 2865
    invoke-virtual/range {v36 .. v36}, Landroid/view/DisplayList;->isValid()Z

    move-result v6

    if-nez v6, :cond_23

    .line 2869
    const/16 v36, 0x0

    .line 2870
    const/16 v39, 0x0

    .line 2874
    :cond_23
    if-eqz v40, :cond_3a

    .line 2875
    const/16 v44, 0x0

    .line 2876
    .local v44, layerRendered:Z
    const/4 v6, 0x2

    move/from16 v0, v45

    if-ne v0, v6, :cond_24

    .line 2877
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v43

    .line 2878
    .local v43, layer:Landroid/view/HardwareLayer;
    if-eqz v43, :cond_35

    invoke-virtual/range {v43 .. v43}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2879
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f

    mul-float v7, v7, v26

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v6, p1

    .line 2880
    check-cast v6, Landroid/view/HardwareCanvas;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2881
    const/16 v44, 0x1

    .line 2891
    .end local v43           #layer:Landroid/view/HardwareLayer;
    :cond_24
    :goto_13
    if-nez v44, :cond_25

    .line 2892
    if-nez v39, :cond_39

    .line 2894
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_38

    .line 2898
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2899
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2933
    .end local v44           #layerRendered:Z
    :cond_25
    :goto_14
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2935
    if-eqz v5, :cond_27

    if-nez v47, :cond_27

    .line 2936
    if-nez v38, :cond_26

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v6

    if-nez v6, :cond_26

    .line 2937
    const/16 v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->onSetAlpha(I)Z

    .line 2939
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 2942
    :cond_27
    if-eqz v47, :cond_28

    if-eqz v38, :cond_28

    .line 2946
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2947
    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v6

    if-eqz v6, :cond_28

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_28

    .line 2949
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 2953
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_6

    .line 2739
    .end local v26           #alpha:F
    .end local v27           #cache:Landroid/graphics/Bitmap;
    .end local v36           #displayList:Landroid/view/DisplayList;
    .end local v39           #hasDisplayList:Z
    .end local v40           #hasNoCache:Z
    .end local v48           #offsetForScroll:Z
    .end local v49           #restoreTo:I
    .end local v54           #sx:I
    .end local v55           #sy:I
    :cond_29
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 2759
    .restart local v27       #cache:Landroid/graphics/Bitmap;
    .restart local v36       #displayList:Landroid/view/DisplayList;
    .restart local v39       #hasDisplayList:Z
    .restart local v54       #sx:I
    .restart local v55       #sy:I
    :cond_2a
    packed-switch v45, :pswitch_data_0

    goto/16 :goto_b

    .line 2767
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v39

    goto/16 :goto_b

    .line 2761
    :pswitch_1
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2762
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2763
    goto/16 :goto_b

    .line 2773
    :cond_2b
    const/16 v40, 0x0

    goto/16 :goto_c

    .line 2774
    .restart local v40       #hasNoCache:Z
    :cond_2c
    const/16 v48, 0x0

    goto/16 :goto_d

    .line 2781
    .restart local v48       #offsetForScroll:Z
    .restart local v49       #restoreTo:I
    :cond_2d
    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v35

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2782
    if-eqz v51, :cond_18

    .line 2784
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v50, v6, v7

    .line 2785
    .local v50, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v50

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_e

    .end local v50           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v18       #layerFlags:I
    .restart local v26       #alpha:F
    :cond_2e
    move/from16 v52, v54

    .line 2835
    goto/16 :goto_f

    .restart local v52       #scrollX:I
    :cond_2f
    move/from16 v53, v55

    .line 2836
    goto/16 :goto_10

    .line 2842
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    :cond_30
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 2846
    .end local v17           #multipliedAlpha:I
    :cond_31
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_21

    .line 2847
    const/16 v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->onSetAlpha(I)Z

    .line 2848
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x40001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 2855
    :cond_32
    if-eqz v51, :cond_33

    if-nez v27, :cond_34

    .line 2856
    :cond_33
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 2858
    :cond_34
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 2883
    .restart local v43       #layer:Landroid/view/HardwareLayer;
    .restart local v44       #layerRendered:Z
    :cond_35
    if-eqz v39, :cond_36

    const/16 v52, 0x0

    .line 2884
    .restart local v52       #scrollX:I
    :goto_15
    if-eqz v39, :cond_37

    const/16 v53, 0x0

    .line 2885
    .restart local v53       #scrollY:I
    :goto_16
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v21, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v0, v6

    move/from16 v22, v0

    add-int v6, v53, v30

    sub-int v6, v6, v35

    int-to-float v0, v6

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x14

    move-object/from16 v19, p1

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_13

    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_36
    move/from16 v52, v54

    .line 2883
    goto :goto_15

    .restart local v52       #scrollX:I
    :cond_37
    move/from16 v53, v55

    .line 2884
    goto :goto_16

    .line 2901
    .end local v43           #layer:Landroid/view/HardwareLayer;
    .end local v52           #scrollX:I
    :cond_38
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_14

    .line 2904
    :cond_39
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v6, p1

    .line 2905
    check-cast v6, Landroid/view/HardwareCanvas;

    sub-int v7, v34, v32

    sub-int v8, v30, v35

    const/4 v9, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z

    goto/16 :goto_14

    .line 2908
    .end local v44           #layerRendered:Z
    :cond_3a
    if-eqz v27, :cond_25

    .line 2909
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2912
    if-nez v45, :cond_3e

    .line 2913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 2914
    .local v28, cachePaint:Landroid/graphics/Paint;
    if-nez v28, :cond_3b

    .line 2915
    new-instance v28, Landroid/graphics/Paint;

    .end local v28           #cachePaint:Landroid/graphics/Paint;
    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 2916
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2917
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 2919
    :cond_3b
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_3d

    .line 2920
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2921
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x1000

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2930
    :cond_3c
    :goto_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 2922
    :cond_3d
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3c

    .line 2923
    const/16 v6, 0xff

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2924
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, -0x1001

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_17

    .line 2927
    .end local v28           #cachePaint:Landroid/graphics/Paint;
    :cond_3e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 2928
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17

    .line 2759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 5018
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5020
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 5021
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 5022
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5026
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5027
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5029
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5030
    aget-object v0, v1, v3

    .line 5031
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 5032
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 5029
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5036
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4905
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 4906
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4907
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4908
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4909
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4910
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4912
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4921
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4924
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 4914
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 4915
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4917
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 4918
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    .end local p0
    :goto_0
    return-object p0

    .line 741
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 744
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1166
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1167
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1168
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1169
    aget-object v0, v1, v3

    .line 1170
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1168
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1174
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .parameter "accessibilityId"

    .prologue
    .line 833
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 834
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v5, v3

    .line 846
    :goto_0
    return-object v5

    .line 837
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 838
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 839
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 840
    aget-object v0, v1, v4

    .line 841
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 842
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 843
    goto :goto_0

    .line 839
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 846
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
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
    .line 3128
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3147
    .end local p0
    :goto_0
    return-object p0

    .line 3132
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3133
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3135
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3136
    aget-object v2, v3, v0

    .line 3138
    .local v2, v:Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3139
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3141
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3142
    goto :goto_0

    .line 3135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3147
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 3074
    iget v4, p0, Landroid/view/View;->mID:I

    if-ne p1, v4, :cond_0

    .line 3093
    .end local p0
    :goto_0
    return-object p0

    .line 3078
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3079
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3081
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3082
    aget-object v2, v3, v0

    .line 3084
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3085
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3087
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3088
    goto :goto_0

    .line 3081
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3093
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 3101
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3120
    .end local p0
    :goto_0
    return-object p0

    .line 3105
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3106
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3108
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3109
    aget-object v2, v3, v0

    .line 3111
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3112
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3114
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3115
    goto :goto_0

    .line 3108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3120
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter "text"
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
    .line 819
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 820
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 821
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 822
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 823
    aget-object v0, v1, v3

    .line 824
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 826
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 822
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 829
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 4992
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 4993
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 4994
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4995
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4996
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 4997
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 4998
    if-eqz v2, :cond_1

    .line 5003
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 4996
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 547
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 561
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4957
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_0

    move v4, v7

    .line 4958
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 4974
    :goto_1
    return v7

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v6

    .line 4957
    goto :goto_0

    .line 4962
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 4963
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4964
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4965
    .local v2, count:I
    const/4 v5, 0x1

    .line 4966
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 4967
    aget-object v0, v1, v3

    .line 4968
    .local v0, child:Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 4969
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4970
    const/4 v5, 0x0

    .line 4966
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4974
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    move v7, v6

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 4514
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4485
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 4503
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 4639
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 4640
    :cond_0
    const/4 v0, 0x0

    .line 4642
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 4628
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2567
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 3066
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 11
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f00

    .line 4196
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4197
    .local v3, rect:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4199
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4200
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4203
    :cond_0
    iget v6, p1, Landroid/view/View;->mLeft:I

    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v6, v7

    .line 4204
    .local v0, dx:I
    iget v6, p1, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v6, v7

    .line 4206
    .local v1, dy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 4208
    if-eqz p3, :cond_2

    .line 4209
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4210
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 4212
    .local v2, position:[F
    :goto_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v5

    .line 4213
    iget v6, p3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 4214
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4215
    aget v6, v2, v5

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4216
    aget v6, v2, v4

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4218
    .end local v2           #position:[F
    :cond_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4219
    iget v6, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v1

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4222
    :cond_2
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v10, v10, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4223
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_5

    .line 4229
    :goto_2
    return v4

    .line 4196
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #rect:Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 4210
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    .restart local v3       #rect:Landroid/graphics/RectF;
    :cond_4
    const/4 v6, 0x2

    new-array v2, v6, [F

    goto :goto_1

    .line 4224
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4226
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v5

    .line 4229
    goto :goto_2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 479
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 4303
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 5013
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 3639
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4458
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 509
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 513
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 514
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 752
    iget v7, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v5

    .line 756
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 757
    goto :goto_0

    .line 760
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 761
    .local v3, descendantFocusability:I
    const/high16 v7, 0x6

    if-eq v3, v7, :cond_0

    .line 762
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 763
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 765
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 766
    aget-object v0, v1, v4

    .line 767
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 768
    goto :goto_0

    .line 765
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 4611
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4612
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4613
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4614
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 4618
    .end local v2           #i:I
    :goto_1
    return v2

    .line 4613
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4618
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 3903
    move-object/from16 v10, p0

    .line 3905
    .local v10, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3906
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_2

    .line 3910
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v12, v12, 0x40

    const/16 v13, 0x40

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    .line 3912
    .local v4, drawAnimation:Z
    :goto_0
    if-nez p2, :cond_b

    .line 3913
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_0

    .line 3914
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3915
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3916
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 3919
    :cond_0
    const/4 v11, 0x0

    .line 3920
    .local v11, view:Landroid/view/View;
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_4

    move-object v11, v10

    .line 3921
    check-cast v11, Landroid/view/View;

    .line 3922
    iget v12, v11, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_1

    .line 3923
    iget-object v12, v11, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 3924
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/View;

    if-eqz v12, :cond_1

    .line 3925
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3926
    .local v5, grandParent:Landroid/view/View;
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3927
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3930
    .end local v5           #grandParent:Landroid/view/View;
    :cond_1
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x60

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    .line 4035
    .end local v4           #drawAnimation:Z
    .end local v11           #view:Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 3910
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3936
    .restart local v4       #drawAnimation:Z
    .restart local v11       #view:Landroid/view/View;
    :cond_4
    if-eqz v4, :cond_5

    .line 3937
    if-eqz v11, :cond_7

    .line 3938
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 3944
    :cond_5
    :goto_2
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_8

    .line 3945
    check-cast v10, Landroid/view/ViewRootImpl;

    .end local v10           #parent:Landroid/view/ViewParent;
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 3946
    const/4 v10, 0x0

    .line 3957
    .restart local v10       #parent:Landroid/view/ViewParent;
    :cond_6
    :goto_3
    if-nez v10, :cond_0

    goto :goto_1

    .line 3939
    :cond_7
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_5

    move-object v12, v10

    .line 3940
    check-cast v12, Landroid/view/ViewRootImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_2

    .line 3947
    :cond_8
    if-eqz v11, :cond_6

    .line 3948
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v12, v12, 0x20

    const/16 v13, 0x20

    if-eq v12, v13, :cond_9

    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, 0x8000

    and-int/2addr v12, v13

    const v13, 0x8000

    if-ne v12, v13, :cond_a

    .line 3950
    :cond_9
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 3951
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x20

    or-int/2addr v12, v13

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 3952
    iget-object v10, v11, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_3

    .line 3954
    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    .line 3960
    .end local v11           #view:Landroid/view/View;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v12

    if-eqz v12, :cond_13

    if-nez v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v12

    if-nez v12, :cond_13

    const/4 v6, 0x1

    .line 3964
    .local v6, isOpaque:Z
    :goto_4
    if-eqz v6, :cond_14

    const/high16 v9, 0x40

    .line 3966
    .local v9, opaqueFlag:I
    :goto_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_c

    .line 3967
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3968
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3969
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3972
    :cond_c
    iget-object v7, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 3973
    .local v7, location:[I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/View;->mLeft:I

    aput v13, v7, v12

    .line 3974
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/View;->mTop:I

    aput v13, v7, v12

    .line 3975
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 3976
    .local v3, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_d

    .line 3977
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 3978
    .local v2, boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3980
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3981
    iget v12, v2, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3f00

    sub-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 3988
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    :cond_d
    const/4 v11, 0x0

    .line 3989
    .restart local v11       #view:Landroid/view/View;
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_e

    move-object v11, v10

    .line 3990
    check-cast v11, Landroid/view/View;

    .line 3991
    iget v12, v11, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_e

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/View;

    if-eqz v12, :cond_e

    .line 3993
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3994
    .restart local v5       #grandParent:Landroid/view/View;
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3995
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3999
    .end local v5           #grandParent:Landroid/view/View;
    :cond_e
    if-eqz v4, :cond_f

    .line 4000
    if-eqz v11, :cond_15

    .line 4001
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4009
    :cond_f
    :goto_6
    if-eqz v11, :cond_11

    .line 4010
    iget v12, v11, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v12, v12, 0x3000

    if-eqz v12, :cond_10

    invoke-virtual {v11}, Landroid/view/View;->getSolidColor()I

    move-result v12

    if-nez v12, :cond_10

    .line 4012
    const/high16 v9, 0x20

    .line 4014
    :cond_10
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x60

    and-int/2addr v12, v13

    const/high16 v13, 0x20

    if-eq v12, v13, :cond_11

    .line 4015
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x600001

    and-int/2addr v12, v13

    or-int/2addr v12, v9

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4019
    :cond_11
    move-object/from16 v0, p2

    invoke-interface {v10, v7, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v10

    .line 4020
    if-eqz v11, :cond_12

    .line 4022
    invoke-virtual {v11}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 4023
    .local v8, m:Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_12

    .line 4024
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4025
    .restart local v2       #boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4026
    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4027
    iget v12, v2, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 4032
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    .end local v8           #m:Landroid/graphics/Matrix;
    :cond_12
    if-nez v10, :cond_d

    goto/16 :goto_1

    .line 3960
    .end local v3           #childMatrix:Landroid/graphics/Matrix;
    .end local v6           #isOpaque:Z
    .end local v7           #location:[I
    .end local v9           #opaqueFlag:I
    .end local v11           #view:Landroid/view/View;
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 3964
    .restart local v6       #isOpaque:Z
    :cond_14
    const/high16 v9, 0x20

    goto/16 :goto_5

    .line 4002
    .restart local v3       #childMatrix:Landroid/graphics/Matrix;
    .restart local v7       #location:[I
    .restart local v9       #opaqueFlag:I
    .restart local v11       #view:Landroid/view/View;
    :cond_15
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_f

    move-object v12, v10

    .line 4003
    check-cast v12, Landroid/view/ViewRootImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_6
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4050
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 4052
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 4054
    aget v2, p1, v5

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4057
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 4058
    .local v0, left:I
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4060
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 4063
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4065
    aput v0, p1, v5

    .line 4066
    aput v1, p1, v6

    .line 4068
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_2

    .line 4069
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4072
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4094
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 4075
    :cond_3
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4077
    iget v2, p0, Landroid/view/View;->mLeft:I

    aput v2, p1, v5

    .line 4078
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v6

    .line 4079
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    .line 4080
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4086
    :goto_1
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_4

    .line 4087
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4090
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 4083
    :cond_5
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    .line 4094
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4349
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

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

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4319
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4416
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4384
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 2031
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1902
    iget v4, p0, Landroid/view/View;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 1903
    .local v1, localX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 1904
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 1905
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 1906
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 1907
    aput v3, v2, v7

    .line 1908
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1909
    aget v1, v2, v6

    .line 1910
    aget v3, v2, v7

    .line 1912
    .end local v2           #localXY:[F
    :cond_0
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 1913
    .local v0, isInView:Z
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 1914
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1916
    :cond_1
    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4870
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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
    .locals 4

    .prologue
    .line 5040
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5041
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5042
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5043
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5044
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5043
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5046
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4237
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4238
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4243
    :goto_0
    return-void

    .line 4241
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 4676
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4678
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4680
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4683
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4684
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 4703
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4705
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4708
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4712
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4713
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4655
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4656
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4657
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4658
    aget-object v0, v1, v2

    .line 4659
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 4660
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4657
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4663
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, canAccept:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1188
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1190
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1192
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1195
    :cond_0
    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 4179
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4180
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4182
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4183
    aget-object v3, v0, v2

    .line 4184
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 4185
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 4182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4187
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 4104
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4105
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v5, 0x0

    .line 4125
    if-ne p1, p0, :cond_0

    .line 4169
    :goto_0
    return-void

    .line 4129
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4134
    .local v1, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_4

    .line 4136
    if-eqz p3, :cond_2

    .line 4137
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4139
    if-eqz p4, :cond_1

    move-object v0, v1

    .line 4140
    check-cast v0, Landroid/view/View;

    .line 4141
    .local v0, p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .end local v0           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object p1, v1

    .line 4152
    check-cast p1, Landroid/view/View;

    .line 4153
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 4144
    :cond_2
    if-eqz p4, :cond_3

    move-object v0, v1

    .line 4145
    check-cast v0, Landroid/view/View;

    .line 4146
    .restart local v0       #p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4148
    .end local v0           #p:Landroid/view/View;
    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 4158
    :cond_4
    if-ne v1, p0, :cond_6

    .line 4159
    if-eqz p3, :cond_5

    .line 4160
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4163
    :cond_5
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4167
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 4114
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4115
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2396
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2399
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2400
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2402
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2406
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2372
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2375
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    .line 2376
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2377
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2378
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 2380
    .local v0, buildCache:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 2381
    aget-object v1, v2, v4

    .line 2382
    .local v1, child:Landroid/view/View;
    iget v6, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 2383
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2384
    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {v1, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2380
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2378
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2390
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2392
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_3
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "visibility"

    .prologue
    .line 899
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 900
    if-nez p2, :cond_3

    .line 901
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 905
    :goto_0
    if-eqz p2, :cond_1

    .line 908
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 911
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 919
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_2

    .line 920
    if-nez p2, :cond_2

    .line 921
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 924
    :cond_2
    return-void

    .line 903
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onConsistencyCheck(I)Z
    .locals 11
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 4538
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 4540
    .local v6, result:Z
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_1

    move v1, v0

    .line 4541
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_2

    .line 4543
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 4544
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4545
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4546
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 4547
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 4548
    const/4 v6, 0x0

    .line 4549
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no parent/a parent that is not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_1
    move v1, v7

    .line 4540
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_2
    move v0, v7

    .line 4541
    goto :goto_1

    .line 4555
    .restart local v0       #checkDrawing:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 4557
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_4

    .line 4558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 4559
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_4

    instance-of v7, v5, Landroid/view/ViewRootImpl;

    if-nez v7, :cond_4

    .line 4560
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_4

    .line 4561
    const/4 v6, 0x0

    .line 4562
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewGroup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is dirty but its parent is not: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    :cond_4
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 5050
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 5051
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5074
    :cond_0
    return-object v4

    .line 5054
    :cond_1
    const/4 v3, 0x0

    .line 5055
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5056
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 5057
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5059
    .local v0, childState:[I
    if-eqz v0, :cond_2

    .line 5060
    array-length v5, v0

    add-int/2addr v3, v5

    .line 5056
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5064
    .end local v0           #childState:[I
    :cond_3
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5066
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 5067
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5069
    .restart local v0       #childState:[I
    if-eqz v0, :cond_4

    .line 5070
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 5066
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2245
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2246
    const/4 v2, 0x0

    .local v2, i:I
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2247
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v3, v2

    .line 2248
    .local v0, child:Landroid/view/View;
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 2250
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2246
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2253
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1523
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2094
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2154
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2155
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2156
    const/4 v6, 0x0

    .line 2157
    .local v6, index:I
    const/4 v5, 0x1

    .line 2158
    .local v5, increment:I
    move v3, v2

    .line 2164
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2165
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2166
    aget-object v0, v1, v4

    .line 2167
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2168
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2169
    const/4 v7, 0x1

    .line 2173
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 2160
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2161
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2162
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 2165
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2173
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 640
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3282
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3285
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3291
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3292
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3294
    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 969
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_0

    .line 970
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 971
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 973
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 3686
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 3687
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3688
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3689
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 3701
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3702
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 3743
    :cond_0
    :goto_0
    return-void

    .line 3706
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3707
    .local v0, children:[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3709
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3710
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    .line 3711
    .local v3, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 3713
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3715
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_2
    if-ltz v5, :cond_8

    .line 3716
    aget-object v6, v0, v5

    .line 3718
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v7, :cond_2

    .line 3719
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3722
    :cond_2
    if-ne v6, v4, :cond_3

    .line 3723
    invoke-virtual {v6}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3724
    move-object v1, v6

    .line 3727
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3729
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3734
    :cond_5
    :goto_3
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3736
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3737
    aput-object v9, v0, v5

    .line 3715
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_6
    move v3, v7

    .line 3710
    goto :goto_1

    .line 3730
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_5

    .line 3731
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 3740
    .end local v6           #view:Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_0

    .line 3741
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 3759
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3760
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3763
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 3764
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 3767
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3769
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3774
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3775
    return-void

    .line 3770
    :cond_5
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    .line 3771
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3523
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3524
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3526
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3555
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3556
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3558
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3535
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3536
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3567
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3568
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3569
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3570
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3546
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3547
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 531
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 532
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 536
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 538
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 2039
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2054
    :cond_0
    :goto_1
    return-void

    .line 2039
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2044
    :cond_2
    if-eqz p1, :cond_3

    .line 2045
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2051
    :goto_2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2047
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2119
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 2131
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2121
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2128
    :cond_0
    :goto_0
    return v1

    .line 2123
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2124
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2127
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2128
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2119
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 609
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v2

    .line 612
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 614
    .local v1, propagate:Z
    if-eqz v1, :cond_0

    .line 617
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 5137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5138
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5139
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 5141
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 4981
    if-eqz p1, :cond_0

    .line 4982
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4983
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4984
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 4987
    :cond_0
    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .locals 5

    .prologue
    .line 5145
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5149
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5150
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5151
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 5152
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5155
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected resetResolvedTextDirection()V
    .locals 4

    .prologue
    .line 5159
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5163
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5164
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5165
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v3

    if-nez v3, :cond_0

    .line 5166
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5169
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 4280
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4281
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 5084
    if-eqz p1, :cond_0

    .line 5085
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5090
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5091
    return-void

    .line 5087
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 4370
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4371
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4334
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4335
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2361
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 2362
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2363
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2364
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2365
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2368
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4430
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4431
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4401
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4402
    return-void
.end method

.method public setChildrenLayersEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 2965
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eq p1, v2, :cond_1

    .line 2966
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 2967
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2976
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_1

    .line 2977
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v2, v1

    .line 2978
    .local v0, child:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_0

    .line 2979
    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 2976
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2983
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 2994
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2995
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 3006
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3007
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 491
    sparse-switch p1, :sswitch_data_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 501
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 502
    return-void

    .line 491
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 4290
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4291
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4292
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4294
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 5124
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5125
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .parameter "transition"

    .prologue
    .line 3620
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3621
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3623
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3624
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 3625
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3627
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 3
    .parameter "split"

    .prologue
    const/high16 v2, 0x20

    .line 2014
    if-eqz p1, :cond_0

    .line 2015
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2022
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2024
    return-void

    .line 2017
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3275
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3276
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2292
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2293
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2297
    :goto_0
    return-void

    .line 2295
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4473
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4474
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3057
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3058
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 5181
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 567
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 574
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 4267
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4268
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4269
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4271
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 4886
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 4887
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 4890
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4892
    :cond_1
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 698
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 699
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 702
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 703
    return-void
.end method

.method updateLocalSystemUiVisibility(II)V
    .locals 4
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 1212
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 1214
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1215
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1216
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1217
    aget-object v0, v1, v3

    .line 1218
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 1216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1220
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3229
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3232
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 3233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3235
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3236
    return-void
.end method

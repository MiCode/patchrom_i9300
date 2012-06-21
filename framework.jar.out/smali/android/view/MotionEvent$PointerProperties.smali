.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3475
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 3476
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 3483
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3484
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 3485
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .parameter "size"

    .prologue
    .line 3489
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 3490
    .local v0, array:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3491
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 3490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3493
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3516
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3517
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3518
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 3526
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3527
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3528
    return-void
.end method

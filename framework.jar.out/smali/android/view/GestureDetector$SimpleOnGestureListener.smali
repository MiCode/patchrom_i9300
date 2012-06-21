.class public Landroid/view/GestureDetector$SimpleOnGestureListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnShapeGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onHandTouched(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onInitSweep(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onLiftTapEBook(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onLiftTapPointer(Landroid/view/MotionEvent;F)Z
    .locals 1
    .parameter "e"
    .parameter "angle"

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 191
    return-void
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 204
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onSweepDown(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "angle"

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

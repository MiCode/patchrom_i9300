.class public Lcom/android/OriginalSettings/personalvibration/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;,
        Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;,
        Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;
    }
.end annotation


# static fields
.field static isTimerRun:Z

.field static timer:Ljava/util/Timer;


# instance fields
.field private final ADJUST_ANGLE:F

.field bm01:Landroid/graphics/Bitmap;

.field bm02:Landroid/graphics/Bitmap;

.field downtime:J

.field handler:Landroid/os/Handler;

.field private mBG:Landroid/graphics/RectF;

.field private mBigOval:Landroid/graphics/RectF;

.field mHandler:Landroid/os/Handler;

.field private mPaints:[Landroid/graphics/Paint;

.field private mPauseSweep:F

.field mSizeChanged:Z

.field private mSmallOval:Landroid/graphics/RectF;

.field private mStart:F

.field private mSweep:F

.field patternString:Ljava/lang/String;

.field pressedValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;",
            ">;"
        }
    .end annotation
.end field

.field stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

.field startTime:J

.field uptime:J

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 35
    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    .line 39
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    .line 40
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 41
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->startTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 35
    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    .line 39
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    .line 40
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 41
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->startTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 35
    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    .line 39
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    .line 40
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 41
    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->startTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "oval"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 144
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 144
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 157
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 158
    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 157
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 163
    :cond_2
    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 173
    .end local v6           #i:I
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_6

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    iget v3, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 181
    :cond_5
    :goto_4
    return-void

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    iget v3, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 179
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4
.end method


# virtual methods
.method public getPatternString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternString is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;
    .locals 3

    .prologue
    .line 328
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method init(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 86
    .local v1, Height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 87
    .local v3, Width:I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canvas height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v4, 0x6

    new-array v4, v4, [Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    .line 90
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    aput-object v5, v4, v9

    .line 91
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    int-to-double v5, v1

    const-wide/high16 v7, 0x4029

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v10

    .line 98
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v13

    .line 103
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v13

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v13

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v11

    .line 107
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v7, v7, v11

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v6, v4, v5

    .line 112
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v6, v4, v5

    .line 115
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    mul-int/lit8 v4, v1, 0xb

    div-int/lit16 v4, v4, 0x90

    int-to-float v0, v4

    .line 119
    .local v0, BigOvalOffset:F
    div-int/lit8 v4, v1, 0x1d

    int-to-float v2, v4

    .line 120
    .local v2, SmallOvalOffset:F
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v0

    int-to-float v6, v1

    sub-float/2addr v6, v0

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    .line 121
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v2

    int-to-float v6, v1

    sub-float/2addr v6, v2

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    .line 124
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    .line 127
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    .line 129
    sput-boolean v9, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020263

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020269

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    .line 134
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    .line 135
    sget-object v4, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    .line 137
    return-void
.end method

.method public isTimerRunning()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const v5, 0x3fe66666

    const/4 v4, 0x2

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSizeChanged:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->init(Landroid/graphics/Canvas;)V

    .line 187
    iput-boolean v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 193
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 194
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 195
    iput v3, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 200
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 201
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPauseSweep:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 202
    iput v3, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 203
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 336
    const-string v4, "PersonalVibration"

    const-string v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v5, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-eq v4, v5, :cond_1

    .line 339
    :cond_0
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() isTimerRunning() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v4, 0x0

    .line 391
    :goto_0
    return v4

    .line 345
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 347
    .local v0, action:I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(), action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    packed-switch v0, :pswitch_data_0

    .line 391
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 350
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    .line 352
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button click started : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    const-wide/16 v5, 0x2710

    sget-object v7, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Vibrator;->vibrate(JLandroid/os/Vibrator$MagnitudeType;)V

    .line 355
    iget-wide v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->startTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 362
    :goto_2
    new-instance v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    invoke-direct {v2}, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;-><init>()V

    .line 363
    .local v2, temp:Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->down:F

    .line 364
    const/high16 v4, -0x4080

    iput v4, v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    .line 365
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v2           #temp:Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    goto :goto_2

    .line 371
    :pswitch_2
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 372
    .local v1, i:I
    if-ltz v1, :cond_2

    .line 374
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    .line 375
    .local v3, temp2:Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v3, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    .line 377
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, temp2.up : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 382
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button clicked ended, clicked time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    iget-wide v8, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    iget-wide v7, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 387
    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    goto/16 :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    .line 318
    return-void
.end method

.method public setPauseTimer()V
    .locals 3

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 263
    const-string v0, "PersonalVibration"

    const-string v1, "setPauseTimer, timer has already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->validateLastValue()Z

    .line 268
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 269
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 270
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 272
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 276
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 277
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPauseSweep:F

    .line 281
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    .line 283
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->invalidate()V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 279
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mPauseSweep:F

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    goto :goto_1
.end method

.method public setRunPlayTimer()V
    .locals 6

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 228
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/OriginalSettings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 230
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 233
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunPlayTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-void
.end method

.method public setRunRecordingTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 210
    sget-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 212
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/OriginalSettings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->startTime:J

    .line 216
    iput-wide v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 217
    iput-wide v6, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 223
    :cond_0
    return-void
.end method

.method public setStopTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 238
    sget-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 240
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 241
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 243
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 244
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 249
    iput-wide v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 250
    iput-wide v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    .line 252
    sget-object v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->stage:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    .line 254
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->invalidate()V

    .line 258
    return-void
.end method

.method public validateLastValue()Z
    .locals 7

    .prologue
    const/high16 v4, 0x43b4

    .line 295
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 296
    .local v0, i:I
    if-gez v0, :cond_0

    .line 297
    const/4 v2, 0x0

    .line 313
    :goto_0
    return v2

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;

    .line 300
    .local v1, temp2:Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;
    iget v2, v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 301
    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 302
    iput v4, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    .line 306
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    .line 308
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->uptime:J

    iget-wide v5, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 311
    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateLastValue(), missing last click up value is added now. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 304
    :cond_2
    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->mSweep:F

    iput v2, v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$floatValue;->up:F

    goto :goto_1
.end method

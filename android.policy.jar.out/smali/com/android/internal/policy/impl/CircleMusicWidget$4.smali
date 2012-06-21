.class Lcom/android/internal/policy/impl/CircleMusicWidget$4;
.super Ljava/lang/Object;
.source "CircleMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMusicMovingBoxCurrentMarginBottom:I

.field private mMusicMovingBoxCurrentMarginTop:I

.field private mMusicMovingBoxOffset:I

.field private mMusicMovingBoxOrinalY:I

.field private mTextBottom:I

.field private mTextLeft:I

.field private mTextRight:I

.field private mTextTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v4, 0xc8

    const/16 v5, 0x32

    const/4 v7, 0x0

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 360
    .local v0, rawY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 363
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 435
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 365
    :pswitch_0
    iput v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOrinalY:I

    .line 366
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    .line 367
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    .line 369
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    goto :goto_0

    .line 373
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOrinalY:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    .line 375
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicMovingBoxOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$700(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 384
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 389
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 393
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_4

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 400
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V

    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 405
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 411
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$700(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    if-ge v1, v2, :cond_5

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v3

    neg-int v3, v3

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V

    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 420
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 418
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$900(Lcom/android/internal/policy/impl/CircleMusicWidget;I)V

    goto :goto_1

    .line 423
    :cond_6
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_7

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V

    .line 427
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 431
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 429
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$900(Lcom/android/internal/policy/impl/CircleMusicWidget;I)V

    goto :goto_2

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

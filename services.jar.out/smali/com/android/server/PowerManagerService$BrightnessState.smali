.class Lcom/android/server/PowerManagerService$BrightnessState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessState"
.end annotation


# instance fields
.field animating:Z

.field curValue:F

.field delta:F

.field initialized:Z

.field final mask:I

.field targetValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter
    .parameter "m"

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2565
    iput p2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    .line 2566
    return-void
.end method

.method private finishAnimationLocked(ZI)V
    .locals 3
    .parameter "more"
    .parameter "curIntValue"

    .prologue
    .line 2652
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2653
    if-nez p1, :cond_0

    .line 2654
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Light Animator Finished curIntValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;I)I

    .line 2659
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 2569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "animating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    return-void
.end method

.method forceValueLocked(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2576
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2577
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2578
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v0, v1, p1}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;II)V

    .line 2579
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    .line 2580
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2582
    :cond_0
    return-void
.end method

.method jumpToTargetLocked()V
    .locals 4

    .prologue
    .line 2643
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpToTargetLocked targetValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;II)V

    .line 2645
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2646
    .local v0, tv:I
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2647
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2648
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2649
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 2662
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 2664
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v4, :cond_2

    const/4 v3, 0x1

    .line 2665
    .local v3, turningOff:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v4, v4, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v4, :cond_0

    if-nez v3, :cond_3

    .line 2666
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2667
    .local v1, now:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v0

    .line 2668
    .local v0, more:Z
    if-eqz v0, :cond_1

    .line 2669
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x10

    add-long/2addr v6, v1

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2681
    .end local v0           #more:Z
    .end local v1           #now:J
    :cond_1
    :goto_1
    monitor-exit v5

    .line 2682
    return-void

    .line 2664
    .end local v3           #turningOff:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2679
    .restart local v3       #turningOff:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    goto :goto_1

    .line 2681
    .end local v3           #turningOff:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method setTargetLocked(IIII)V
    .locals 3
    .parameter "target"
    .parameter "stepsToTarget"
    .parameter "initialValue"
    .parameter "nominalCurrentValue"

    .prologue
    const/4 v2, 0x1

    .line 2586
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    if-nez v0, :cond_1

    .line 2587
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    .line 2588
    int-to-float v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2593
    :cond_0
    iput p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2594
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v1, v0

    if-ltz p4, :cond_2

    int-to-float v0, p4

    :goto_0
    sub-float v0, v1, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    .line 2604
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2609
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2610
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2611
    :goto_1
    return-void

    .line 2590
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 2594
    :cond_2
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    goto :goto_0
.end method

.method stepLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2614
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 2639
    :goto_0
    return v1

    .line 2619
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2620
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v2

    .line 2621
    .local v0, curIntValue:I
    const/4 v1, 0x1

    .line 2622
    .local v1, more:Z
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 2623
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2624
    const/4 v1, 0x0

    .line 2637
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v2, v3, v0}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;II)V

    .line 2638
    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    goto :goto_0

    .line 2625
    :cond_2
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 2626
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-lt v0, v2, :cond_1

    .line 2627
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2628
    const/4 v1, 0x0

    goto :goto_1

    .line 2631
    :cond_3
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-gt v0, v2, :cond_1

    .line 2632
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2633
    const/4 v1, 0x0

    goto :goto_1
.end method

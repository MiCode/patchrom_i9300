.class public Lcom/android/internal/policy/impl/CircleUnlockRipple;
.super Landroid/opengl/GLSurfaceView;
.source "CircleUnlockRipple.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockWidget;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 47
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->DBG:Z

    .line 35
    const-string v0, "CircleUnlockRipple"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->TAG:Ljava/lang/String;

    .line 44
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mPowerManager:Landroid/os/PowerManager;

    .line 53
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    const/high16 v2, 0x110

    const v3, 0x1100007

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setSoundRID(II)V

    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setEGLContextClientVersion(I)V

    .line 58
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setEGLConfigChooser(IIIIII)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 63
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setDrawingOnWindowResize(Z)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 71
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 72
    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->cleanUp()V

    .line 177
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public handleTickerTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForMove(F)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForMove(F)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 78
    const-string v1, "CircleUnlockRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 106
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 107
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    if-eqz v1, :cond_1

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    .line 113
    :cond_1
    return v4

    .line 81
    .end local v0           #result:Z
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    .line 82
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 97
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->onResume()V

    .line 188
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V
    .locals 0
    .parameter "onCircleTouchListener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    .line 160
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V
    .locals 0
    .parameter "onCircleUnlockListener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 167
    return-void
.end method

.method public setStartLocation(I)V
    .locals 3
    .parameter "startLocation"

    .prologue
    .line 151
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartLocation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setStartLocation(I)V

    .line 153
    return-void
.end method

.method public tikerRippleForClose()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForClose()V

    .line 126
    return-void
.end method

.method public tikerRippleForOpen()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForOpen()V

    .line 120
    return-void
.end method

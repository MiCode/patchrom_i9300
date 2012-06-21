.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAdvancedByHost:Z

.field private mAttached:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 50
    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 51
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 53
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 54
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 55
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 56
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 57
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 88
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    iput v2, p0, Landroid/widget/AdapterViewFlipper;->FLIP_MSG:I

    .line 277
    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v4, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 51
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 53
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 54
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 55
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 56
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 57
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 88
    new-instance v1, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    iput v3, p0, Landroid/widget/AdapterViewFlipper;->FLIP_MSG:I

    .line 277
    new-instance v1, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 81
    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 83
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method

.method static synthetic access$002(Landroid/widget/AdapterViewFlipper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/AdapterViewFlipper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/AdapterViewFlipper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AdapterViewFlipper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    return v0
.end method

.method private updateRunning()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 223
    return-void
.end method

.method private updateRunning(Z)V
    .locals 5
    .parameter "flipNow"

    .prologue
    const/4 v2, 0x1

    .line 234
    iget-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_1

    move v1, v2

    .line 236
    .local v1, running:Z
    :goto_0
    iget-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eq v1, v3, :cond_0

    .line 237
    if-eqz v1, :cond_2

    .line 238
    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v3, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    .line 239
    iget-object v3, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 250
    :cond_0
    return-void

    .line 234
    .end local v1           #running:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    .restart local v1       #running:Z
    :cond_2
    iget-object v3, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 298
    return-void
.end method

.method public isAutoStart()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 104
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const-string v1, "ViewFlipper"

    const-string v2, "LockScreen disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 115
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 125
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    .line 129
    :cond_1
    return-void

    .line 118
    :cond_2
    const-string v1, "ViewFlipper"

    const-string v2, "LockScreen set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAttached:Z

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mAttached:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    .line 134
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 136
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAttached:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAttached:Z

    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 142
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    .line 147
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 148
    invoke-direct {p0, v1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 149
    return-void

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 154
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 155
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0
    .parameter "autoStart"

    .prologue
    .line 264
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 265
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 164
    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 165
    return-void
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 194
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 197
    return-void
.end method

.method public showPrevious()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 212
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 213
    return-void
.end method

.method public startFlipping()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 172
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 173
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 180
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 181
    return-void
.end method

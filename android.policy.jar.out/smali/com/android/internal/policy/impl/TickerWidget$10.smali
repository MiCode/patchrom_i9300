.class Lcom/android/internal/policy/impl/TickerWidget$10;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$10;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$10;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$10;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$10;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->handleTickerTouchEvent(Landroid/view/MotionEvent;)V

    .line 347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

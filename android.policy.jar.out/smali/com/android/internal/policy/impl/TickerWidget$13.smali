.class Lcom/android/internal/policy/impl/TickerWidget$13;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/TickerCallback;


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
    .line 368
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$13;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeTickerSlidingDrawer()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$13;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->close()V

    .line 375
    return-void
.end method

.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$13;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 380
    return-void
.end method

.method public openTickerSlidingDrawer()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$13;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->open()V

    .line 371
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$13;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 385
    return-void
.end method

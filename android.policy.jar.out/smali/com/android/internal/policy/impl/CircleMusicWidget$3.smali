.class Lcom/android/internal/policy/impl/CircleMusicWidget$3;
.super Ljava/lang/Object;
.source "CircleMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->resetMinTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$400(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 341
    return-void
.end method

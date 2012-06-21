.class Lcom/android/internal/policy/impl/CircleShortcutWidget$1;
.super Ljava/lang/Object;
.source "CircleShortcutWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Landroid/content/res/Configuration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$000(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortcutItem hasWindowFocus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 191
    check-cast v0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->access$200(Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    .end local p1
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->access$200(Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$000(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

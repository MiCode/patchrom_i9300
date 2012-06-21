.class Lcom/android/internal/policy/impl/CircleMusicWidget$8;
.super Ljava/lang/Object;
.source "CircleMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 558
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 562
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const v2, 0xea60

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1402(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z

    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.rew.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 575
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 571
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0
.end method

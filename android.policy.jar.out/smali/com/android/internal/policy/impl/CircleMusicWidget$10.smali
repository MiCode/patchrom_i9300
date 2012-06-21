.class Lcom/android/internal/policy/impl/CircleMusicWidget$10;
.super Ljava/lang/Object;
.source "CircleMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 644
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 647
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 648
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 670
    :cond_0
    :goto_0
    return v3

    .line 650
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->addMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1300(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 651
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1400(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1402(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 657
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 663
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1100(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 664
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1500(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

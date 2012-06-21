.class Lcom/android/internal/policy/impl/CircleMusicWidget$9;
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
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 582
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10202eb

    if-ne v1, v2, :cond_1

    .line 586
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 639
    :cond_1
    :goto_0
    return v3

    .line 589
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1100(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 590
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1500(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 594
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1400(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1402(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z

    .line 597
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 602
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 613
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->addMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1300(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1400(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1402(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z

    .line 616
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 621
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 626
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 631
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/internal/policy/impl/CircleMusicWidget$6;
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
    .line 461
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

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

    .line 464
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10202ed

    if-ne v1, v2, :cond_1

    .line 468
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    :cond_1
    :goto_0
    return v3

    .line 471
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1100(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 476
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mFFLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1000(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mFFLongPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1002(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z

    .line 479
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 484
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 494
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->addMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1300(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mFFLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1000(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mFFLongPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$1002(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z

    .line 497
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 502
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 508
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 513
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

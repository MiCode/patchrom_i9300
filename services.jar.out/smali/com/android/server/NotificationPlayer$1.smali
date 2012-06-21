.class Lcom/android/server/NotificationPlayer$1;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$1;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$1;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v0}, Lcom/android/server/NotificationPlayer;->stop()V

    .line 369
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$1;->this$0:Lcom/android/server/NotificationPlayer;

    #calls: Lcom/android/server/NotificationPlayer;->unregister()V
    invoke-static {v0}, Lcom/android/server/NotificationPlayer;->access$1000(Lcom/android/server/NotificationPlayer;)V

    .line 370
    const-string v0, "STATUSBAR-NotificationPlayer"

    const-string v1, "Turnover - FLIP_TOP_TO_BOTTOM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

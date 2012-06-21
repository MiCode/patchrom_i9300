.class Lcom/android/internal/policy/impl/ClockWidget$Charge$1;
.super Landroid/os/Handler;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget$Charge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$Charge;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$Charge;)V
    .locals 0
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1337
    :goto_0
    return-void

    .line 1333
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Charge;->getCMASCount()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->access$2200(Lcom/android/internal/policy/impl/ClockWidget$Charge;)V

    .line 1334
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Charge;->updateChargingInfo()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->access$2300(Lcom/android/internal/policy/impl/ClockWidget$Charge;)V

    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method

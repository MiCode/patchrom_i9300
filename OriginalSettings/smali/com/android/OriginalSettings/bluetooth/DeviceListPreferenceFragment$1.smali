.class Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onMotionScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Shake Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->startScanning()V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

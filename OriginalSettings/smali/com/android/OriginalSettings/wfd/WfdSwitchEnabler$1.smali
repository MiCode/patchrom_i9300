.class Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    const-string v2, "wifi_p2p_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V

    .line 64
    :cond_0
    return-void
.end method

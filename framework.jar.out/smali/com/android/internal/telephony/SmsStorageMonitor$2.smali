.class Lcom/android/internal/telephony/SmsStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    const-string v0, "SmsStorageMonitor"

    const-string v1, "BroadcastReceiver - mGcfResultReceiver "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "SmsStorageMonitor"

    const-string v1, "ACTION_GCF_DEVICE_STORAGE_LOW "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 282
    invoke-static {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$102(Z)Z

    .line 285
    :cond_0
    invoke-static {v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$002(Z)Z

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    .line 291
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    const-string v0, "SmsStorageMonitor"

    const-string v1, "ACTION_GCF_DEVICE_STORAGE_OK "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 298
    invoke-static {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$002(Z)Z

    .line 301
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$102(Z)Z

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    .line 308
    :cond_3
    return-void
.end method

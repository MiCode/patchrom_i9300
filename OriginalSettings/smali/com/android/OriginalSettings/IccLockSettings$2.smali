.class Lcom/android/OriginalSettings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/IccLockSettings;->finish()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, SIMstate:Ljava/lang/String;
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), SIMstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$400(Lcom/android/OriginalSettings/IccLockSettings;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #calls: Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$500(Lcom/android/OriginalSettings/IccLockSettings;)V

    goto :goto_0

    .line 190
    :cond_2
    const-string v2, "IccLockSettings"

    const-string v3, "onReceive(), resetDialogState()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #calls: Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$600(Lcom/android/OriginalSettings/IccLockSettings;)V

    goto :goto_0
.end method

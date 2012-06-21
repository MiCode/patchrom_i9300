.class Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "CircleFMRadioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleFMRadioWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    const-string v8, "GlassLockScreenFMRadioWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : intent action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mScreenOn:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$102(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const/4 v6, 0x1

    .line 176
    .local v6, playing:I
    const/4 v7, 0x0

    .line 177
    .local v7, stop:I
    const-string v8, "com.android.fm.player_lock.status.on"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 178
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$202(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z

    .line 179
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)I

    .line 180
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12c2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 181
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 169
    .end local v0           #action:Ljava/lang/String;
    .end local v6           #playing:I
    .end local v7           #stop:I
    :cond_2
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 170
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mScreenOn:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$102(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z

    goto :goto_0

    .line 182
    .restart local v0       #action:Ljava/lang/String;
    .restart local v6       #playing:I
    .restart local v7       #stop:I
    :cond_3
    const-string v8, "com.android.fm.player_lock.status.off"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 183
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$202(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z

    .line 184
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)I

    .line 185
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12c2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v6, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 186
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 187
    .end local v5           #msg:Landroid/os/Message;
    :cond_4
    const-string v8, "com.android.fm.player_lock.status.channel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 188
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$202(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z

    .line 189
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)I

    .line 190
    const-string v8, "freq"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, freq:Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, chName:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "freq"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 194
    .local v2, dataArray:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12c3

    invoke-virtual {v8, v9, v6, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 195
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 197
    .end local v1           #chName:Ljava/lang/String;
    .end local v2           #dataArray:[Ljava/lang/String;
    .end local v3           #freq:Ljava/lang/String;
    .end local v5           #msg:Landroid/os/Message;
    :cond_6
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 198
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 200
    .local v4, isHeadsetPlugged:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12c5

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v4, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

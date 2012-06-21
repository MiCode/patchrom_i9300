.class Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;
.super Landroid/os/Handler;
.source "CircleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sent MSG cannot be handled here"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Create WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    new-instance v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v3, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Create WakeUpCmdRecognizer - finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->getEnableWakeUp()Z

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$202(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$200(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "initialize WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I

    .line 170
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mInitialized:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "initialize WakeUpCmdRecognizer - finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$500(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startVerify WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 183
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startVerify WakeUpCmdRecognizer - finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 187
    :catch_2
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "terminateVerify WakeUpCmdRecognizer finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 199
    :catch_3
    move-exception v0

    .line 200
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanUp stopVerify WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanUp stopVerify WakeUpCmdRecognizer - finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mInitialized:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 215
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanUp destroy WakeUpCmdRecognizer - finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 218
    :catch_4
    move-exception v0

    .line 219
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$602(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->removeAllMsgs()V

    .line 226
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$702(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;

    .line 228
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$502(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    goto/16 :goto_0

    .line 231
    :pswitch_6
    const/4 v1, 0x0

    .line 232
    .local v1, tmpIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->choiceMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_3

    .line 235
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$700(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->dismissLockScreen()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$800(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V

    goto/16 :goto_0

    .line 243
    .end local v1           #tmpIntent:Landroid/content/Intent;
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto/16 :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

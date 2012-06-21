.class Lcom/sec/android/internal/ims/IMSService$13;
.super Landroid/os/Handler;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 3230
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 3234
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3275
    :cond_0
    :goto_0
    return-void

    .line 3237
    :pswitch_0
    const-string v4, "IMS/IMSService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " performDisconnect.......mCurrentConnectedNtwrk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    sget-object v4, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v5, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v4, v5, :cond_0

    .line 3239
    const-string v4, "IMS/IMSService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network is not active so performDisconnect.......isImsInited"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 3242
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 3243
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 3250
    :cond_1
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 3251
    sget-object v4, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v4, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3252
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->access$300(Lcom/sec/android/internal/ims/IMSService;)V

    goto :goto_0

    .line 3259
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3260
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.ImsPopUp"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3262
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3263
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3264
    const-string v4, "IMS/IMSService"

    const-string v5, "IMS_NOT_SUBSCRIBED Alert Dialog shown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3267
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040665

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3268
    .local v2, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 3269
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3270
    const-string v4, "IMS/IMSService"

    const-string v5, "EVENT_IMSVT_DISABLED_ON_WIFI Alert Dialog shown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3234
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

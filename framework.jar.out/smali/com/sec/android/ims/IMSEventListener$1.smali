.class Lcom/sec/android/ims/IMSEventListener$1;
.super Landroid/os/Handler;
.source "IMSEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/ims/IMSEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sec/android/ims/IMSEventListener$MessageData;

    .line 34
    .local v6, msgData:Lcom/sec/android/ims/IMSEventListener$MessageData;
    iget-object v0, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, v6, Lcom/sec/android/ims/IMSEventListener$MessageData;->arg1:I

    iget v4, v6, Lcom/sec/android/ims/IMSEventListener$MessageData;->arg2:I

    iget-object v5, v6, Lcom/sec/android/ims/IMSEventListener$MessageData;->data:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

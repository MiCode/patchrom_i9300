.class Landroid/mtp/MTPJNIInterface$1;
.super Landroid/content/BroadcastReceiver;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MTPJNIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, action:Ljava/lang/String;
    const-string v3, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In MTPJNIINterface onReceive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v3, "com.android.MTP.OBJECT_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "Path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v1}, Landroid/mtp/MTPJNIInterface;->sendObjectAdded(Ljava/lang/String;)V

    .line 212
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v3, "com.android.MTP.OBJECT_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const-string v3, "Path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #path:Ljava/lang/String;
    iget-object v3, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v1}, Landroid/mtp/MTPJNIInterface;->sendObjectRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v1           #path:Ljava/lang/String;
    :cond_2
    const-string v3, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 209
    .restart local v1       #path:Ljava/lang/String;
    const-string v3, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***** path of screenshot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v1}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/OriginalSettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "unused"

    .prologue
    const/4 v6, 0x0

    .line 242
    iget-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/OriginalSettings/CredentialStorage;->access$400(Lcom/android/OriginalSettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->reset()Z

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-static {v3}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 247
    .local v2, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3}, Landroid/security/IKeyChainService;->reset()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 252
    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    .end local v2           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return-object v3

    .line 253
    .restart local v2       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v1

    .line 256
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "CredentialStorage"

    const-string v5, "Service not registered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 259
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    .end local v2           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 261
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 248
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 252
    :try_start_5
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 253
    :catch_3
    move-exception v1

    .line 256
    .restart local v1       #iae:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v4, "CredentialStorage"

    const-string v5, "Service not registered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 251
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    .line 252
    :try_start_7
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 257
    :goto_1
    :try_start_8
    throw v3

    .line 253
    :catch_4
    move-exception v1

    .line 256
    .restart local v1       #iae:Ljava/lang/IllegalArgumentException;
    const-string v4, "CredentialStorage"

    const-string v5, "Service not registered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    const v1, 0x7f0d062a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    .line 274
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    const v1, 0x7f0d062b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

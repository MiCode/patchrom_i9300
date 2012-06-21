.class Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "SignatureLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SignatureLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/impl/SignatureLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 482
    :try_start_0
    const-string v0, "SignatureLockScreen"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "SignatureLockScreen"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 487
    monitor-exit v1

    .line 500
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$1000(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 491
    const-string v0, "SignatureLockScreen"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$1000(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 495
    :cond_1
    const-string v0, "SignatureLockScreen"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$1102(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z

    .line 499
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddSignFailed(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 475
    return-void
.end method

.method public onAddSignSucceeded(I)V
    .locals 0
    .parameter "nCount"

    .prologue
    .line 478
    return-void
.end method

.method public onSignatureCleared()V
    .locals 2

    .prologue
    .line 411
    const-string v0, "SignatureLockScreen"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public onSignatureDetected()V
    .locals 7

    .prologue
    .line 421
    const-string v3, "SignatureLockScreen"

    const-string v4, "onSignatureDetected is called by SignView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 427
    const-string v3, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification score for inputted signature is (* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getVerifyScore(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " *) current threshold is (* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/SignView;->getThresholdValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " *)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    const-string v3, "SignatureLockScreen"

    const-string v4, "sign verification is successful, go to unlock screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v3, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->SUCCESS:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$602(Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 442
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$700(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 443
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$700(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 472
    :goto_1
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$602(Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 447
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$800(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 449
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$800(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 451
    .local v1, failedAttempts:I
    const-string v3, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sign verification is failed, count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 455
    const-string v3, "SignatureLockScreen"

    const-string v4, "user failed to unlock with signature until maximum try, go to unlock screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$800(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 460
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$700(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .line 462
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040390

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104065c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, guideMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$500(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public onSignatureInputting()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "SignatureLockScreen"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$700(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 418
    return-void
.end method

.method public onSignatureStart()V
    .locals 2

    .prologue
    .line 398
    const-string v0, "SignatureLockScreen"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$500(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104065c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/high16 v1, -0x7800

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    .line 405
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-static {}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$600()Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 406
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->IDENTIFYING:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$602(Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 408
    :cond_0
    return-void
.end method

.class Lcom/android/internal/policy/impl/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1045
    const/4 v1, 0x1

    .line 1047
    .local v1, isScreenCaptureEnabled:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1051
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1

    .line 1053
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1060
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1062
    const-string v2, "WindowManager"

    const-string v3, "take screen shot"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot(I)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    .line 1068
    :goto_1
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1057
    const/4 v1, 0x1

    goto :goto_0

    .line 1066
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "WindowManager"

    const-string v3, "not captured"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

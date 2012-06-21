.class Lcom/android/internal/widget/PenGestureView$4;
.super Ljava/lang/Object;
.source "PenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    const/4 v1, 0x1

    .line 209
    .local v1, isScreenCaptureEnabled:Z
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    const-string/jumbo v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    #setter for: Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2, v3}, Lcom/android/internal/widget/PenGestureView;->access$702(Lcom/android/internal/widget/PenGestureView;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 224
    const-string v2, "PenGesture"

    const-string v3, "Long pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/widget/PenGestureView;->access$800(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PenGesture"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2, v3}, Lcom/android/internal/widget/PenGestureView;->access$702(Lcom/android/internal/widget/PenGestureView;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 219
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "PenGesture"

    const-string v3, "Long pressed, but not captured"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

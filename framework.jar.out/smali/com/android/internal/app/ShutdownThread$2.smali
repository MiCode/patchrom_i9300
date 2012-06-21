.class final Lcom/android/internal/app/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 208
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$202(Z)Z

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$002(Z)Z

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1
    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$400(Landroid/content/Context;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$500(Landroid/content/Context;)V

    goto :goto_0
.end method

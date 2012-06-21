.class Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/ClockWidget$Clock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$Clock;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$Clock;Lcom/android/internal/policy/impl/ClockWidget$Clock;)V
    .locals 1
    .parameter
    .parameter "clock"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    .line 706
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 707
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 708
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 712
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;

    .line 713
    .local v0, digitalClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;
    if-eqz v0, :cond_0

    .line 714
    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshTime()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1300(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    .line 722
    :goto_0
    return-void

    .line 717
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1600(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v1

    goto :goto_0
.end method

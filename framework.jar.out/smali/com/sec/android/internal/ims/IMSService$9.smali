.class Lcom/sec/android/internal/ims/IMSService$9;
.super Ljava/lang/Object;
.source "IMSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V
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
    .line 2875
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string/jumbo v1, "mobile"

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1100(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    .line 2879
    return-void
.end method

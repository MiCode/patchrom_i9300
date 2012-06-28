.class Lcom/android/OriginalSettings/AnimationAdapter$1;
.super Landroid/os/Handler;
.source "AnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AnimationAdapter;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AnimationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/OriginalSettings/AnimationAdapter$1;->this$0:Lcom/android/OriginalSettings/AnimationAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter$1;->this$0:Lcom/android/OriginalSettings/AnimationAdapter;

    #calls: Lcom/android/OriginalSettings/AnimationAdapter;->startAnimation()Z
    invoke-static {v0}, Lcom/android/OriginalSettings/AnimationAdapter;->access$000(Lcom/android/OriginalSettings/AnimationAdapter;)Z

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    return-void
.end method

.class Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask$1;
.super Ljava/lang/Object;
.source "BackgroundView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask$1;->this$1:Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask$1;->this$1:Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/BackgroundView$UpdateTimeTask;->this$0:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->invalidate()V

    .line 400
    return-void
.end method
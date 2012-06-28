.class Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepingModeEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, action:Ljava/lang/String;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    #calls: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->initTime(Landroid/content/Context;IIIIII)V
    invoke-static/range {v0 .. v7}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$300(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;Landroid/content/Context;IIIIII)V

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$400(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$400(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 368
    :cond_0
    return-void
.end method

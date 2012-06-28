.class Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;
.super Ljava/lang/Object;
.source "SleepingModeEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    iget-object v1, v1, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    iget-object v2, v2, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;IIZ)V

    .line 541
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    iget-object v1, v1, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    iget-object v2, v2, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;IIZ)V

    .line 542
    return-void
.end method

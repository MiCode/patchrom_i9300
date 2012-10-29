.class Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;
.super Ljava/lang/Object;
.source "SleepingModeEditor.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->onCreate(Landroid/os/Bundle;)V
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
    .line 163
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    const/4 v1, 0x1

    #calls: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V
    invoke-static {v0, p2, p3, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;IIZ)V

    .line 166
    return-void
.end method

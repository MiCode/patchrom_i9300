.class Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$9;
.super Ljava/lang/Object;
.source "SleepingModeEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->init(Landroid/content/Context;)V
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
    .line 289
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$9;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$9;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$200(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 293
    .local v0, hasChecked:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$9;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->access$200(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)Landroid/widget/CheckBox;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    return-void

    .line 293
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

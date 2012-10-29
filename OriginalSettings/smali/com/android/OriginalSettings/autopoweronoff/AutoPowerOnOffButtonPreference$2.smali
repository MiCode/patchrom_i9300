.class Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$002(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    iget-object v8, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v1, v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$600(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget-object v4, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v4, v4, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    #setter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v8, v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$002(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iget v6, v0, Landroid/text/format/Time;->hour:I

    .line 223
    .local v6, hour:I
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iget v7, v0, Landroid/text/format/Time;->minute:I

    .line 225
    .local v7, minute:I
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 226
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 227
    return-void
.end method

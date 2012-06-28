.class Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffButtonPreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 82
    iput-object p1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 12
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const v11, 0x7f0d09c6

    const v10, 0x7f0d04ee

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, isSameHour:I
    const/4 v3, 0x0

    .line 87
    .local v3, isSameMinute:I
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 88
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 90
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    const/4 v6, 0x0

    #setter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$002(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_hour_end"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 96
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_minute_end"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 97
    if-ne p2, v2, :cond_2

    if-ne p3, v3, :cond_2

    .line 100
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v4, mPowerOffPowerOnSame:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d09c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    new-instance v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$1;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$2;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$2;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 174
    .end local v4           #mPowerOffPowerOnSame:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_hour_start"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 124
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_minute_start"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 125
    if-ne p2, v2, :cond_2

    if-ne p3, v3, :cond_2

    .line 128
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .restart local v4       #mPowerOffPowerOnSame:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 131
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d09c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$3;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$3;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1$4;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 153
    .end local v4           #mPowerOffPowerOnSame:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v6, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v6, p2, p3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$302(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$400(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$300(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_hour_start"

    invoke-interface {v5, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_minute_start"

    invoke-interface {v5, v6, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_no_repeat_power_off"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_no_repeat_power_on"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "ext_key_changed_by_user"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 159
    .end local v0           #appContext:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_hour_end"

    invoke-interface {v5, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_minute_end"

    invoke-interface {v5, v6, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

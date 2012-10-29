.class Lcom/android/OriginalSettings/wifi/WifiTimer$1;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 105
    const-string v5, "WifiTimer"

    const-string v6, "Save"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    .line 107
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    .line 109
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 110
    .local v2, isSchduleChange:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/OriginalSettings/wifi/WifiTimer;->access$000(Lcom/android/OriginalSettings/wifi/WifiTimer;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 111
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, newStartTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, newEndTime:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    const/16 v6, 0x12d

    #calls: Lcom/android/OriginalSettings/wifi/WifiTimer;->showDialog(I)V
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/wifi/WifiTimer;->access$100(Lcom/android/OriginalSettings/wifi/WifiTimer;I)V

    .line 143
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iput-object v4, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    .line 122
    const-string v5, "wifitimer_start_time"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 124
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->startTime_tv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v7, v7, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    const-string v5, "WifiTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newEndTime    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iput-object v3, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    .line 129
    const-string v5, "wifitimer_end_time"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 131
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->endTime_tv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v7, v7, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_2
    const-string v5, "WifiTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/WifiTimer;->access$000(Lcom/android/OriginalSettings/wifi/WifiTimer;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wifitimer_enabled"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/OriginalSettings/wifi/WifiTimer;->access$000(Lcom/android/OriginalSettings/wifi/WifiTimer;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "wifitimer_enabled"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v6, 0x1389

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 138
    const-string v5, "WifiTimer"

    const-string v6, "Broadcast Sent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0           #alarm_intent:Landroid/content/Intent;
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    const v6, 0x7f0d022f

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

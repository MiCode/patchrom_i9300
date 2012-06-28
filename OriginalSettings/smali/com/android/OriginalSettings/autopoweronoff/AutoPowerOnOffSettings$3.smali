.class Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

.field final synthetic val$p:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->val$p:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->val$p:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;
    invoke-static {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_auto_power_on_off_repeat_days"

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;
    invoke-static {v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getDaysOfWeek()Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->access$200(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    sput-boolean v4, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 226
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ext_key_changed_by_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 232
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

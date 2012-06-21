.class Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;ZLandroid/content/Intent;Lcom/android/internal/policy/impl/ClockWidget$Clock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->this$1:Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 682
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1002(Lcom/android/internal/policy/impl/ClockWidget$Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 686
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1102(Lcom/android/internal/policy/impl/ClockWidget$Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 687
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->this$1:Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;

    iget-object v1, v1, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->chooseClockType()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1200(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    .line 689
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshTime()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1300(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    .line 690
    return-void
.end method

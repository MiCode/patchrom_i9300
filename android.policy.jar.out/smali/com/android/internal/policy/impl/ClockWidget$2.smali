.class Lcom/android/internal/policy/impl/ClockWidget$2;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget;->access$000(Lcom/android/internal/policy/impl/ClockWidget;)Lcom/android/internal/policy/impl/ClockWidget$Clock;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Clock;Z)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget;->access$200(Lcom/android/internal/policy/impl/ClockWidget;)Lcom/android/internal/policy/impl/ClockWidget$Charge;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Charge;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->access$300(Lcom/android/internal/policy/impl/ClockWidget$Charge;Z)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget;->access$400(Lcom/android/internal/policy/impl/ClockWidget;)Lcom/android/internal/policy/impl/ClockWidget$Weather;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Weather;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$500(Lcom/android/internal/policy/impl/ClockWidget$Weather;Z)V

    .line 143
    return-void
.end method

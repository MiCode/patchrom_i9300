.class Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Led"
.end annotation


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryFullARGB:I

.field private mBatteryLedOff:I

.field private mBatteryLedOn:I

.field private mBatteryLight:Lcom/android/server/LightsService$Light;

.field private mBatteryLow:Z

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private mTurnOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 760
    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mLightsService:Lcom/android/server/LightsService;

    .line 761
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 763
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 765
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 767
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 769
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 771
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 773
    return-void
.end method


# virtual methods
.method updateLightsLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 779
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 780
    .local v0, level:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 804
    .local v1, status:I
    const/4 v2, 0x4

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v3, 0xb

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 806
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 807
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "turn on LED for not charging"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 809
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v3, 0xa

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 810
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 811
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "turn on LED for charging"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_2
    const/4 v2, 0x5

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 813
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v3, 0xe

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 814
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 815
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "turn on LED for fully charged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)I

    move-result v2

    if-gt v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 817
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v3, 0xd

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 818
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 819
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "turn on LED for low battery"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 822
    iput-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 823
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "turn off LED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

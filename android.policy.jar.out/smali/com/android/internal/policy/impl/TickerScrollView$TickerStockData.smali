.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockData"
.end annotation


# instance fields
.field private mStockChange:Ljava/lang/String;

.field private mStockChangeRate:Ljava/lang/String;

.field private mStockName:Ljava/lang/String;

.field private mStockPrice:Ljava/lang/String;

.field private mStockUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "price"
    .parameter "change"
    .parameter "change_rate"
    .parameter "url"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 422
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 423
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 424
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 425
    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    .line 426
    iput-object p6, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 427
    return-void
.end method


# virtual methods
.method public getStockChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    return-object v0
.end method

.method public getStockChangeRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getStockUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setStockChange(Ljava/lang/String;)V
    .locals 0
    .parameter "change"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setStockChangeRate(Ljava/lang/String;)V
    .locals 0
    .parameter "change_rate"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setStockPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setStockUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 467
    return-void
.end method

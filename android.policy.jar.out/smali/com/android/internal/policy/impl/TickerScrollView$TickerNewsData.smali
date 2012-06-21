.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerNewsData"
.end annotation


# instance fields
.field private mAttribute:Ljava/lang/String;

.field private mNews_url:Ljava/lang/String;

.field private mPublish_time:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "attribute"
    .parameter "publish_time"
    .parameter "news_url"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 371
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 372
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 373
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 374
    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method public getNewsAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setNewsAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setNewsTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "news_url"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 403
    return-void
.end method

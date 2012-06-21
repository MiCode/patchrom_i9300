.class Lcom/android/internal/policy/impl/TickerScrollView$2;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;

    .line 124
    .local v1, stockData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 125
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/TickerCallback;->goToUnlockScreen()V

    .line 131
    :cond_0
    return-void
.end method

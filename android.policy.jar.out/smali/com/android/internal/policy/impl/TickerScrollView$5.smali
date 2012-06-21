.class Lcom/android/internal/policy/impl/TickerScrollView$5;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;
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
    .line 234
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$5;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView$5;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView$5;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/TickerCallback;->goToUnlockScreen()V

    .line 241
    return-void
.end method

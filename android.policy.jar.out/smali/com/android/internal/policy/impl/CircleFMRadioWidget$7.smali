.class Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;
.super Ljava/lang/Object;
.source "CircleFMRadioWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleFMRadioWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 429
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->resetMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$600(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$500(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 432
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$300(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)I

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 441
    :goto_0
    return-void

    .line 437
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #setter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)I

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0
.end method

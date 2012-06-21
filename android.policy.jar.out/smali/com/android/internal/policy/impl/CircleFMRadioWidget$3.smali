.class Lcom/android/internal/policy/impl/CircleFMRadioWidget$3;
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
    .line 304
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$500(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->resetMinTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$600(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    .line 309
    return-void
.end method

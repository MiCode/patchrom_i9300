.class Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;
.super Ljava/lang/Object;
.source "RepeatBtnGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    iget-object v0, v0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mChangedListener:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$OnChangedListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    iget-object v0, v0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->mChangedListener:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$OnChangedListener;

    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    invoke-interface {v0, v1}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup$OnChangedListener;->onCheckChanged(Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;)V

    .line 93
    :cond_0
    return-void
.end method

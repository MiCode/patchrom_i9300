.class Landroid/widget/TextView$SelectionActionModeCallback$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$SelectionActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SelectionActionModeCallback;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SelectionActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 11118
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 11122
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    iget-object v0, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 11123
    return-void
.end method

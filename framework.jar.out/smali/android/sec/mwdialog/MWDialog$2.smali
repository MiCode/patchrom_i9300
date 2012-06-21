.class Landroid/sec/mwdialog/MWDialog$2;
.super Ljava/lang/Object;
.source "MWDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/mwdialog/MWDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/mwdialog/MWDialog;


# direct methods
.method constructor <init>(Landroid/sec/mwdialog/MWDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Landroid/sec/mwdialog/MWDialog$2;->this$0:Landroid/sec/mwdialog/MWDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102037c

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/sec/mwdialog/MWDialog$2;->this$0:Landroid/sec/mwdialog/MWDialog;

    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->dismiss()V

    .line 132
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

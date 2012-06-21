.class Landroid/sec/mwdialog/MWDialog$3;
.super Ljava/lang/Object;
.source "MWDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 139
    iput-object p1, p0, Landroid/sec/mwdialog/MWDialog$3;->this$0:Landroid/sec/mwdialog/MWDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Landroid/sec/mwdialog/MWDialog$3;->this$0:Landroid/sec/mwdialog/MWDialog;

    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->dismiss()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1020382
        :pswitch_0
    .end packed-switch
.end method

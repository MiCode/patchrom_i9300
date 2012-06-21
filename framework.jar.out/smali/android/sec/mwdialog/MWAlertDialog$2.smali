.class Landroid/sec/mwdialog/MWAlertDialog$2;
.super Ljava/util/TimerTask;
.source "MWAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/mwdialog/MWAlertDialog;->timeOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/mwdialog/MWAlertDialog;


# direct methods
.method constructor <init>(Landroid/sec/mwdialog/MWAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Landroid/sec/mwdialog/MWAlertDialog$2;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog$2;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/sec/mwdialog/MWAlertDialog;->launcherTimer:Z

    .line 86
    return-void
.end method

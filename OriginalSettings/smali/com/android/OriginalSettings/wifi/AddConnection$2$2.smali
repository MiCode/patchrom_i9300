.class Lcom/android/OriginalSettings/wifi/AddConnection$2$2;
.super Ljava/lang/Object;
.source "AddConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/AddConnection$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/wifi/AddConnection$2;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/AddConnection$2;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2$2;->this$1:Lcom/android/OriginalSettings/wifi/AddConnection$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2$2;->this$1:Lcom/android/OriginalSettings/wifi/AddConnection$2;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AddConnection;->finish()V

    .line 154
    return-void
.end method

.class Lcom/android/OriginalSettings/wifi/DeleteConnection$2;
.super Ljava/lang/Object;
.source "DeleteConnection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/DeleteConnection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/DeleteConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->finish()V

    .line 121
    return-void
.end method

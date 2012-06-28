.class Lcom/android/OriginalSettings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWpsInProgress:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 1161
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->wpsCommandCancel()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$500(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 1163
    :cond_0
    return-void
.end method

.class Lcom/android/OriginalSettings/wifi/WifiSettings$12;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V
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
    .line 1349
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$12;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$12;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$12;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1500(Lcom/android/OriginalSettings/wifi/WifiSettings;I)V

    .line 1352
    return-void
.end method

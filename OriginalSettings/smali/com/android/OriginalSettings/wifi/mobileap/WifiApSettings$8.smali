.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 614
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1202(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 616
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 620
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    .line 621
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 623
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 627
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setOpenWarningFlag(Z)V

    goto :goto_0
.end method

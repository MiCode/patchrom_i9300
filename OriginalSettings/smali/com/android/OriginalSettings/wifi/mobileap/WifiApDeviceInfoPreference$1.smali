.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 75
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 76
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 77
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 78
    .local v2, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 79
    .local v1, num:I
    if-lez v1, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog()V
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    goto :goto_0
.end method

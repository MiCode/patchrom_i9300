.class Lcom/android/OriginalSettings/nearby/NearbySettings$1;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-static {p2}, Lcom/android/OriginalSettings/nearby/IMediaServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    move-result-object v2

    #setter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$002(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/IMediaServer;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    .line 156
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;
    invoke-static {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 158
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: mIMediaServer == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 166
    .local v0, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$100(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 167
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #calls: Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$200(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    .line 169
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$002(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/IMediaServer;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    .line 149
    return-void
.end method

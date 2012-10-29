.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 981
    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->setP2PDisable(Z)V

    .line 986
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 987
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v2, 0x2

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 988
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 992
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 994
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 995
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1000
    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog set mEndConnectionFlag true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 1003
    return-void
.end method

.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 147
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    const/4 v2, 0x1

    #setter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;Z)Z

    .line 149
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    #setter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z
    invoke-static {v1, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;Z)Z

    .line 152
    return v3
.end method

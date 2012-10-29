.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;
.super Ljava/lang/Object;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    iput-boolean p2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

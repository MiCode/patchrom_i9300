.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$4;
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


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$4;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$4;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$4;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    iget-object v1, v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setForceChecked(Z)V

    .line 250
    return-void
.end method

.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;
.super Ljava/lang/Object;
.source "PhoneProfileEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$700(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$700(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    .line 220
    :cond_1
    return-void
.end method

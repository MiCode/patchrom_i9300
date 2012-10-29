.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$2;
.super Landroid/os/Handler;
.source "PhoneProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;
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
    .line 144
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

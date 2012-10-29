.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 125
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string v1, "off"

    .line 130
    .local v1, silentMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$000(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 131
    .local v0, ringerMode:I
    if-nez v0, :cond_3

    .line 132
    const-string v1, "mute"

    .line 136
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$100(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I
    invoke-static {v3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$200(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    #calls: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$300(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;Ljava/lang/String;)V

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    const/4 v3, 0x0

    #calls: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateState(Z)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->access$400(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;Z)V

    .line 141
    .end local v0           #ringerMode:I
    .end local v1           #silentMode:Ljava/lang/String;
    :cond_2
    return-void

    .line 133
    .restart local v0       #ringerMode:I
    .restart local v1       #silentMode:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 134
    const-string v1, "vibrate"

    goto :goto_0
.end method

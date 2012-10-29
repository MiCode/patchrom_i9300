.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$1;
.super Landroid/os/Handler;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$1;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;

    #calls: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->access$000(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    .line 112
    return-void
.end method

.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$2;
.super Landroid/os/Handler;
.source "PhoneProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;
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
    .line 127
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 130
    const-string v0, "PhoneProfileSettings"

    const-string v1, "invalidateViews "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 132
    return-void
.end method

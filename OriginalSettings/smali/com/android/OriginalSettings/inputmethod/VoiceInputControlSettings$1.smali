.class Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings$1;
.super Landroid/database/ContentObserver;
.source "VoiceInputControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings$1;->this$0:Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 75
    const-string v0, "VoiceInputControlSettings"

    const-string v1, "onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

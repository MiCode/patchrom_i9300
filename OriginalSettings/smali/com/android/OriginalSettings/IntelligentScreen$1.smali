.class Lcom/android/OriginalSettings/IntelligentScreen$1;
.super Landroid/database/ContentObserver;
.source "IntelligentScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/IntelligentScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/IntelligentScreen;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/IntelligentScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/OriginalSettings/IntelligentScreen$1;->this$0:Lcom/android/OriginalSettings/IntelligentScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/OriginalSettings/IntelligentScreen$1;->this$0:Lcom/android/OriginalSettings/IntelligentScreen;

    #calls: Lcom/android/OriginalSettings/IntelligentScreen;->CheckingAccelerometerRotationState()V
    invoke-static {v0}, Lcom/android/OriginalSettings/IntelligentScreen;->access$000(Lcom/android/OriginalSettings/IntelligentScreen;)V

    .line 49
    return-void
.end method

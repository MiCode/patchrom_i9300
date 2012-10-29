.class Lcom/android/OriginalSettings/wifi/WifiSettings$5;
.super Landroid/os/CountDownTimer;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 1197
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    const/16 v1, 0x3e8

    .line 1189
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$820(Lcom/android/OriginalSettings/wifi/WifiSettings;I)I

    .line 1190
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$900(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLapseTime:I
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$800(Lcom/android/OriginalSettings/wifi/WifiSettings;)I

    move-result v1

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1002(Lcom/android/OriginalSettings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$900(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1193
    return-void
.end method

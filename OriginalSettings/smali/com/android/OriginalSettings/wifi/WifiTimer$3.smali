.class Lcom/android/OriginalSettings/wifi/WifiTimer$3;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiTimer;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$3;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v4, 0xb

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 191
    .local v0, cal:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$3;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiTimer;->startTime_tv:Landroid/widget/TextView;

    const-string v2, "hh:mm AA"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 193
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$3;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiTimer;->endTime_tv:Landroid/widget/TextView;

    const-string v2, "hh:mm AA"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$3;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 195
    return-void
.end method

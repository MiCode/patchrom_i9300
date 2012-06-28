.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConnectionTime:Ljava/lang/Long;

.field private mIp:Ljava/lang/String;

.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "ip"
    .parameter "mac"
    .parameter "time"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mIp:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mMac:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mConnectionTime:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 85
    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    .line 86
    .local v0, hour:J
    const-wide/16 v8, 0xe10

    rem-long v2, p1, v8

    .line 87
    .local v2, hour_rest:J
    const-wide/16 v8, 0x3c

    div-long v4, v2, v8

    .line 88
    .local v4, min:J
    const-wide/16 v8, 0x3c

    rem-long v6, v2, v8

    .line 90
    .local v6, sec:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 63
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400d1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mView:Landroid/view/View;

    .line 64
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setView(Landroid/view/View;)V

    .line 65
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setInverseBackgroundForced(Z)V

    .line 67
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0271

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0272

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MM/dd/yyyy HH:mm"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, connDateTime:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mConnectionTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, connetcionTime:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0273

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v7

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mConnectionTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 77
    .local v2, durationMils:J
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0274

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d04ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.class Lcom/android/OriginalSettings/wifi/DataPoint;
.super Landroid/preference/Preference;
.source "DataPoint.java"


# instance fields
.field address:Ljava/lang/String;

.field bssid:Ljava/lang/String;

.field cid:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;)V
    .locals 2
    .parameter "context"
    .parameter "data"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p2}, Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;->getssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->ssid:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;->getbssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->bssid:Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;->getaddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->address:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;->getcid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->cid:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->title:Ljava/lang/String;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/DataPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/DataPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown address\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/DataPoint;->title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 1
    .parameter "preference"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/DataPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    return-void
.end method

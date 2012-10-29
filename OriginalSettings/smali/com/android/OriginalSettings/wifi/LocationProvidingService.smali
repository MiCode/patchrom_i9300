.class public Lcom/android/OriginalSettings/wifi/LocationProvidingService;
.super Landroid/app/Service;
.source "LocationProvidingService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final S:[Ljava/lang/String;


# instance fields
.field public CID:Ljava/lang/String;

.field private CompareThread:Ljava/lang/Runnable;

.field final Null:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private UpdateAddress:Ljava/lang/Runnable;

.field private UpdateWifi:Ljava/lang/Runnable;

.field addrHandler:Landroid/os/Handler;

.field private cellAvailable:Z

.field final deltaDistance:I

.field final deltaMinutes:I

.field final deltaTime:I

.field details:Ljava/lang/CharSequence;

.field latitude:D

.field lm:Landroid/location/LocationManager;

.field loc:Landroid/location/Location;

.field private locAvailable:Z

.field locat:Landroid/location/Location;

.field longtitude:D

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field notificationManager:Landroid/app/NotificationManager;

.field results:I

.field title:Ljava/lang/CharSequence;

.field tm:Landroid/telephony/TelephonyManager;

.field wifiHandler:Landroid/os/Handler;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Out of Service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Temporarily Unavailable"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Available"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    const-string v0, "LocationProvidingService"

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->Null:Ljava/lang/String;

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->deltaMinutes:I

    .line 76
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->deltaTime:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->deltaDistance:I

    .line 138
    new-instance v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService$1;-><init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 209
    new-instance v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService$2;-><init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateAddress:Ljava/lang/Runnable;

    .line 244
    new-instance v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;-><init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    .line 325
    new-instance v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;-><init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 12
    .parameter "location"

    .prologue
    const/4 v11, 0x0

    .line 146
    instance-of v8, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v8, :cond_1

    move-object v4, p1

    .line 147
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 148
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 149
    .local v2, lac:I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 150
    .local v1, cid:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    .line 151
    const-string v8, "LocationProvidingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GsmCellLocation CID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_auto_connection"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 153
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    .end local v1           #cid:I
    .end local v2           #lac:I
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    instance-of v8, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_0

    move-object v4, p1

    .line 156
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 157
    .local v4, loc:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 158
    .local v0, bid:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v7

    .line 159
    .local v7, sid:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 160
    .local v6, nid:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 161
    .local v3, lat:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    .line 162
    .local v5, lon:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    .line 163
    const-string v8, "LocationProvidingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CdmaCellLocation BID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_auto_connection"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    const-string v0, "LocationProvidingService"

    const-string v1, "Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->tm:Landroid/telephony/TelephonyManager;

    .line 111
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    .line 112
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    .line 113
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->notificationManager:Landroid/app/NotificationManager;

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    const-string v0, "LocationProvidingService"

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 136
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    .line 176
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connection"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateAddress:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    .local v0, updateAddress:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    .end local v0           #updateAddress:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 6
    .parameter "provider"

    .prologue
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x3f80

    .line 186
    const-string v0, "LocationProvidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProviderDisabled, provider: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 6
    .parameter "provider"

    .prologue
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x3f80

    .line 196
    const-string v0, "LocationProvidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProviderEnabled, provider: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x3f80

    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 125
    const-string v0, "LocationProvidingService"

    const-string v1, "Service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 128
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 206
    const-string v0, "LocationProvidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, Provider= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->S:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

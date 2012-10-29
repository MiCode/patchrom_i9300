.class Lcom/android/OriginalSettings/wifi/LocationProvidingService$1;
.super Landroid/telephony/PhoneStateListener;
.source "LocationProvidingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/LocationProvidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$1;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$1;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #calls: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$000(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Landroid/telephony/CellLocation;)V

    .line 142
    return-void
.end method

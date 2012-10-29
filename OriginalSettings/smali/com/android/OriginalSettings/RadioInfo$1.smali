.class Lcom/android/OriginalSettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #setter for: Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/RadioInfo;->access$802(Lcom/android/OriginalSettings/RadioInfo;Z)Z

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$900(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 170
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/RadioInfo;->access$500(Lcom/android/OriginalSettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 158
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$400(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 153
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$000(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$100(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$200(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$300(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 148
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #setter for: Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/RadioInfo;->access$602(Lcom/android/OriginalSettings/RadioInfo;Z)Z

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$1;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$700(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 164
    return-void
.end method

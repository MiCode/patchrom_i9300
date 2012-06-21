.class final Lcom/android/internal/telephony/ims/IMSSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "IMSSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_IMS"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "phone"
    .parameter "ci"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 53
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "userData"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "sms"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected getEncoding()I
    .locals 2

    .prologue
    .line 234
    const-string v0, "RIL_IMS"

    const-string v1, "getEncoding should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 223
    return-void
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 246
    return-void
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 243
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 89
    return-void
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "sms"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 181
    return-void
.end method

.method protected sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 272
    return-void
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 98
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 254
    return-void
.end method

.method protected sendNewSubmitPduWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZIII)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 174
    return-void
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"

    .prologue
    .line 156
    return-void
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 249
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 150
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 203
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 141
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 219
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"

    .prologue
    .line 263
    return-void
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 130
    return-void
.end method

.method public updateIccAvailability()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

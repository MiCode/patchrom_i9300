.class public final Lcom/android/internal/telephony/ims/IMSPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field static final LOG_TAG:Ljava/lang/String; = "IMSPHONE"

.field static final RESTART_ECM_TIMER:I = 0x0

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_NUMBER_IMS:Ljava/lang/String; = "vm_number_key_ims"


# instance fields
.field h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

.field mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field private mEsn:Ljava/lang/String;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPostDialHandler:Landroid/os/Registrant;

.field mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

.field mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "defaultPhone"

    .prologue
    .line 135
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ims/IMSPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/Phone;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "defaultPhone"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 88
    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 110
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    .line 141
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 144
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 150
    instance-of v0, p5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_1

    .line 151
    check-cast p5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local p5
    iget-object v0, p5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->registerForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;ILjava/lang/Object;)V

    .line 186
    return-void

    .line 153
    .restart local p5
    :cond_1
    instance-of v0, p5, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 154
    check-cast p5, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local p5
    iget-object v0, p5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/IMSPhone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->acceptCall()V

    .line 310
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 319
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1215
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1216
    const-string v5, "IMSPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addUserToConfCall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1221
    .local v4, newStrbuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_2

    const/16 v5, 0x24

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1223
    const-string v5, "\\$"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, dialStrings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 1226
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1227
    .local v2, mString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1228
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    .end local v0           #dialStrings:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #mString:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1240
    .local v3, newDialString:Ljava/lang/String;
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1241
    const-string v5, "IMSPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addUserToConfCall: newDialString.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/ims/IMSCallTracker;->addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    return-object v5
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 326
    const-string v0, "IMSPHONE"

    const-string v1, "canConference: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 335
    const-string v0, "IMSPHONE"

    const-string v1, "canTransfer: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 1169
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 345
    return-void
.end method

.method public conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 352
    const-string v0, "IMSPHONE"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1349
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in IMS PHONE!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1183
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1184
    const-string v6, "IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialVideoCall"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    move-object v2, p1

    .line 1187
    .local v2, mDialString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1189
    .local v5, newStrbuf:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_2

    const/16 v6, 0x24

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1191
    const-string v6, "\\$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, dialStrings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 1195
    aget-object v6, v0, v1

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, mString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1197
    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1199
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    .end local v0           #dialStrings:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #mString:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1208
    .local v4, newDialString:Ljava/lang/String;
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1209
    const-string v6, "IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialVideoCall: newDialString.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    return-object v6
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1175
    const-string v1, "IMSPhone"

    const-string v2, "dialVideoCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 379
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->disableLocationUpdates()V

    .line 390
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 188
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->unregisterForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dispose()V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->dispose()V

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;->dispose()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 397
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->enableLocationUpdates()V

    .line 407
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "IMSPHONE"

    const-string v1, "explicitCallTransfer: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 422
    const-string v0, "IMSPHONE"

    const-string v1, "getAvailableNetworks: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getBackgroundCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getCBEnableConfig()Z
    .locals 2

    .prologue
    .line 759
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEgetCBEnableConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPavailable()Z
    .locals 1

    .prologue
    .line 1307
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPtable()Lcom/android/internal/telephony/gsm/simCSPtable;
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 1251
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 438
    const-string v0, "IMSPHONE"

    const-string v1, "getCallForwardingIndicator: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 448
    const-string v0, "IMSPHONE"

    const-string v1, "getCallForwardingOption: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 460
    return-void
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 469
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone getCurrentDataConnectionList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 2

    .prologue
    .line 496
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone getDataActivityState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 506
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone getDataCallList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 514
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone getDataConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1400
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState([Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnTypes"

    .prologue
    .line 1256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataNetworkDisable()Z
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 2

    .prologue
    .line 523
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone getDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 541
    const-string v0, "IMSPHONE"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v0, "0"

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 1320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 573
    const-string v0, "IMSPHONE"

    const-string v1, "getIccPhoneBookInterfaceManager: is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1389
    const-string v0, "IMSPHONE"

    const-string v1, "IMEI is not available in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    const-string v0, "IMSPHONE"

    const-string v1, "getLine1AlphaTag: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1330
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 1262
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiSmsState()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 649
    return-void
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 656
    const-string v0, "IMSPHONE"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSPhone;->getDataCallList(Landroid/os/Message;)V

    .line 667
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method getPendingMmiCodes is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    .prologue
    .line 1154
    const-string v0, "IMSPhone"

    const-string v1, "getPhoneType = PHONE_TYPE_IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v0, 0x5

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1416
    return-void
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getRingingCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1377
    const/4 v0, 0x0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .prologue
    .line 698
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceState........."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 1346
    return-void
.end method

.method public getVideoMailAlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    const-string v0, ""

    .line 740
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 741
    :cond_0
    const/4 v0, 0x0

    .line 743
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1384
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 803
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method handleInCallMmiCommands is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 812
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method handlePinMmi is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public initiateFakecall()V
    .locals 0

    .prologue
    .line 1269
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 821
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone isDataConnectivityPossible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x1

    return v0
.end method

.method public isRoamingArea()Z
    .locals 1

    .prologue
    .line 1326
    const/4 v0, 0x0

    return v0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1149
    return-void
.end method

.method public notifyNewIMSCall(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "newRinging"

    .prologue
    .line 1139
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewIMSCallP(Lcom/android/internal/telephony/Connection;)V

    .line 1141
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1136
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 1130
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1131
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 831
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method registerForSuppServiceNotification is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->rejectCall()V

    .line 840
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    .line 210
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 211
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 212
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    .line 214
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 216
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1395
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 1374
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 851
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 852
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 0
    .parameter "ussdMessage"
    .parameter "ussdLength"
    .parameter "dcsCode"

    .prologue
    .line 1405
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 866
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "sendUssdResponse: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method

.method public setCBMessage(ZCI[S)V
    .locals 2
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"

    .prologue
    .line 749
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEsetCBMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public setCSCCbConfig(Z)Z
    .locals 2
    .parameter "cbEnable"

    .prologue
    .line 754
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEsetCSCCbConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1293
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 876
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "setCallForwardingOption: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 884
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method setCallWaiting is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 895
    return-void
.end method

.method public setDataConnectionToggleExt()I
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 902
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "not needed for IMS phone setDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 911
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "setLine1Number: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1333
    return-void
.end method

.method public setMultiSmsState(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 785
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 921
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 928
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method setNetworkSelectionModeAutomatic is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 936
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 937
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 945
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 1420
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 1398
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "st"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iput-object p1, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 1304
    return-void
.end method

.method public setSubscription(I)V
    .locals 0
    .parameter "subId"

    .prologue
    .line 1367
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 965
    return-void
.end method

.method public setmMmiInitBySTK(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1409
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 972
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 986
    return-void
.end method

.method public storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1115
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1116
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1119
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 994
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 1001
    const-string v0, "IMSPHONE"

    const-string/jumbo v1, "method unregisterForSuppServiceNotification is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void
.end method

.method public updateIccAvailability()V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public updateServiceLocation()V
    .locals 0

    .prologue
    .line 1299
    return-void
.end method

.method public updateServiceLocation(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getLacAndCid(Landroid/os/Message;)V

    .line 1010
    return-void
.end method

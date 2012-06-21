.class public final Lcom/android/internal/telephony/ims/IMSInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "IMSInterface.java"


# static fields
.field private static CallIndex:I = 0x0

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_END_CALL_SIMULATE:I = 0x13

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_IMS_CALL_STATE_CHANGE:I = 0x11

.field protected static final EVENT_IMS_NEW_RINGING_CALL:I = 0x12

.field protected static final EVENT_IMS_NOT_ON:I = 0x14

.field protected static final EVENT_IMS_NOT_REGISTERED:I = 0x15

.field protected static final EVENT_ISIM_AUTHENTICATION_DONE:I = 0x191

.field protected static final EVENT_ISIM_AUTHENTICATION_DONE_MEDIASHARE:I = 0x192

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field private static final IMS_EVENT_CALL_ACTIVE:I = 0x3

.field private static final IMS_EVENT_CALL_ALERT:I = 0x2

.field private static final IMS_EVENT_CALL_DIAL:I = 0x1

.field private static final IMS_EVENT_CALL_DISCONNECT:I = 0x7

.field private static final IMS_EVENT_CALL_HOLD:I = 0x4

.field private static final IMS_EVENT_CALL_IDLE:I = 0x0

.field private static final IMS_EVENT_CALL_INCOMING:I = 0x5

.field private static final IMS_EVENT_CALL_WAITING:I = 0x6

.field private static final IMS_GET_CURRENT_CALLS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IMSPhone/IMSInterface"

.field private static bImsRegisterDone:Z

.field private static iEnablerIndex:I

.field private static mVTHandler:Landroid/os/Handler;


# instance fields
.field private final COMMAND_ISIM_AUTH:I

.field ImsCallIDList:Ljava/util/List;

.field ImsCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation
.end field

.field private MAXCOUNT:I

.field private callid:I

.field private count:I

.field private isVideoCall:Z

.field public mCallType:I

.field mContext:Landroid/content/Context;

.field mIMSCTHandler:Landroid/os/Handler;

.field mIMSCallStateRegistrants:Landroid/os/RegistrantList;

.field private mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsManager:Lcom/sec/android/internal/ims/IMSService;

.field mRilCm:Lcom/android/internal/telephony/CommandsInterface;

.field myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-boolean v0, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    .line 134
    sput v0, Lcom/android/internal/telephony/ims/IMSInterface;->CallIndex:I

    .line 135
    sput v0, Lcom/android/internal/telephony/ims/IMSInterface;->iEnablerIndex:I

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 715
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    .line 127
    const/16 v1, 0x88

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->COMMAND_ISIM_AUTH:I

    .line 133
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallIDList:Ljava/util/List;

    .line 138
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    .line 139
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    .line 140
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 141
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    .line 142
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->MAXCOUNT:I

    .line 146
    new-instance v1, Lcom/android/internal/telephony/ims/IMSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/IMSInterface$1;-><init>(Lcom/android/internal/telephony/ims/IMSInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 1279
    new-instance v1, Lcom/android/internal/telephony/ims/IMSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/IMSInterface$2;-><init>(Lcom/android/internal/telephony/ims/IMSInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    .line 716
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    .line 717
    sget-boolean v1, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    if-nez v1, :cond_0

    .line 718
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->getIMSInstance(Landroid/content/Context;)V

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    sput-boolean v3, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    .line 739
    :cond_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "context"
    .parameter "sCommandsInterface"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;-><init>(Landroid/content/Context;)V

    .line 710
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 711
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/IMSInterface;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/IMSInterface;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/IMSInterface;->updateCallsList(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ims/IMSInterface;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->deleteFromCallsList(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ims/IMSInterface;Ljava/lang/String;IZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZII)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/ims/IMSInterface;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    return-object v0
.end method

.method private addToCallsList(Ljava/lang/String;IZII)V
    .locals 8
    .parameter "address"
    .parameter "state"
    .parameter "callType"
    .parameter "callId"
    .parameter "mCallType"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1238
    const-string v2, "IMSPhone/IMSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  addToCallsList : mCalltype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1240
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-static {p2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1241
    iput p4, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1242
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1243
    iput-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1244
    iput-boolean p3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1245
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 1246
    iput p5, v0, Lcom/android/internal/telephony/DriverCall;->mCallType:I

    .line 1248
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    iput v2, v0, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    .line 1249
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    .line 1250
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    iget v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->MAXCOUNT:I

    if-le v2, v3, :cond_0

    .line 1252
    iput v6, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    .line 1254
    :cond_0
    iput-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1255
    iput-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 1256
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 1257
    const/4 v1, 0x0

    .line 1258
    .local v1, np:I
    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1259
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 1260
    const-string v2, "IMSPhone/IMSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  addToCallsList : Address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const-string v2, "anonymous"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1263
    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 1264
    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1273
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1275
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    return-void

    .line 1268
    :cond_1
    iput-object p1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1269
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    goto :goto_0
.end method

.method private declared-synchronized checkForCallIDInCallsList(I)Z
    .locals 7
    .parameter "callId"

    .prologue
    .line 670
    monitor-enter p0

    const/4 v2, 0x0

    .line 671
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 672
    .local v1, bRetVal:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 673
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 674
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p1, v4, :cond_1

    .line 675
    const/4 v1, 0x1

    .line 679
    :cond_0
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " checkForCallIDInCallsList...callId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "....returning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return v1

    .line 672
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized deleteFromCallsList(I)Z
    .locals 7
    .parameter "callId"

    .prologue
    .line 651
    monitor-enter p0

    const/4 v2, 0x0

    .line 652
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 653
    .local v1, bRetVal:Z
    :try_start_0
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, " deleteFromCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 655
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 656
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteFromCallsList    callID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callindex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p1, v4, :cond_1

    .line 659
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    const/4 v1, 0x1

    .line 665
    :cond_0
    monitor-exit p0

    return v1

    .line 654
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized getIMSInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    if-nez v0, :cond_0

    .line 751
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, " Failed to getIMSInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :cond_0
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static registerVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 2052
    sput-object p0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 2053
    return-void
.end method

.method private stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 1
    .parameter "eventType"

    .prologue
    .line 685
    sparse-switch p1, :sswitch_data_0

    .line 703
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 691
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 693
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 695
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 697
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 699
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 701
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_5
        0xca -> :sswitch_4
        0xcb -> :sswitch_2
        0xcd -> :sswitch_3
        0xd0 -> :sswitch_0
        0x13f -> :sswitch_0
        0x142 -> :sswitch_0
    .end sparse-switch
.end method

.method public static unregisterVideoEventListener(Landroid/os/Handler;)V
    .locals 3
    .parameter "VTHandler"

    .prologue
    .line 2057
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterVideoEventListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 2059
    return-void
.end method

.method private updateCallList(IZ)V
    .locals 0
    .parameter "state"
    .parameter "callType"

    .prologue
    .line 1235
    return-void
.end method

.method private declared-synchronized updateCallsList(II)Z
    .locals 7
    .parameter "eventType"
    .parameter "callID"

    .prologue
    .line 636
    monitor-enter p0

    const/4 v2, 0x0

    .line 637
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 638
    .local v1, bRetVal:Z
    :try_start_0
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, " updateCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 640
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 641
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p2, v4, :cond_1

    .line 642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 643
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  present call state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    const/4 v1, 0x1

    .line 648
    :cond_0
    monitor-exit p0

    return v1

    .line 639
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "alertType"
    .parameter "AlertFormat"
    .parameter "AlertSrc"
    .parameter "AlertCorrel"
    .parameter "AlertMark"
    .parameter "AlertData"
    .parameter "response"

    .prologue
    .line 1925
    return-void
.end method

.method public OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "Data"
    .parameter "Len"
    .parameter "response"

    .prologue
    .line 1931
    return-void
.end method

.method public ServerStartSession(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "sessionId"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 1937
    return-void
.end method

.method public SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "CB1_ID"
    .parameter "CB2_ID"
    .parameter "CB3_ID"
    .parameter "ENC"
    .parameter "VER"
    .parameter "maxMsgSize"
    .parameter "Max_obj_size"
    .parameter "Cookie"
    .parameter "Disp_Name"
    .parameter "response"

    .prologue
    .line 1944
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2, v3, v3}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 781
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 782
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 783
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1423
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1951
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 2372
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1461
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1470
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/internal/ims/IMSService;->addUserToConfCall(Ljava/lang/String;I)I

    move-result v0

    .line 804
    .local v0, tmpCallid:I
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1478
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1487
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 1957
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1500
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 2223
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1508
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 2226
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2353
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2356
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 1418
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 799
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 2146
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1515
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "response"

    .prologue
    .line 1523
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1962
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1530
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1538
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0, p1, v4}, Lcom/sec/android/internal/ims/IMSService;->makeCall(Ljava/lang/String;I)I

    move-result v8

    .line 886
    .local v8, tmpCallid:I
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  dial  makeCall callid returned as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 888
    .local v6, message:Landroid/os/Message;
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 890
    iput v8, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    .line 891
    const/4 v2, 0x2

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZII)V

    .line 893
    iput v9, v6, Landroid/os/Message;->what:I

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 917
    :goto_0
    return-void

    .line 900
    :cond_0
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 902
    .local v7, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 903
    const/16 v0, 0xd4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 907
    :goto_1
    iput v9, v6, Landroid/os/Message;->what:I

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 909
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 905
    :cond_1
    const/16 v0, 0xde

    iput v0, v7, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 2083
    return-void
.end method

.method public dialConferenceCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0, p1, v4}, Lcom/sec/android/internal/ims/IMSService;->makeConferenceCall(Ljava/lang/String;I)I

    move-result v8

    .line 827
    .local v8, tmpCallid:I
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  dial  makeCall callid returned as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 829
    .local v6, message:Landroid/os/Message;
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 831
    iput v8, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    .line 832
    const/4 v2, 0x2

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZII)V

    .line 834
    iput v9, v6, Landroid/os/Message;->what:I

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 858
    :goto_0
    return-void

    .line 841
    :cond_0
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 843
    .local v7, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 844
    const/16 v0, 0xd4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 848
    :goto_1
    iput v9, v6, Landroid/os/Message;->what:I

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 850
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 846
    :cond_1
    const/16 v0, 0xde

    iput v0, v7, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1427
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1967
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 746
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1545
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1553
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1561
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1569
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1577
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1585
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1972
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1593
    return-void
.end method

.method public getCdmaDataProfile(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1977
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2302
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 1982
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 924
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getCurrentCalls   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  getCurrentCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1600
    return-void
.end method

.method public getDataCallProfile(ILandroid/os/Message;)V
    .locals 0
    .parameter "appType"
    .parameter "result"

    .prologue
    .line 2142
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2196
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1608
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1616
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1624
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1632
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1640
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1648
    return-void
.end method

.method public getIMSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2229
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2347
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1656
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2305
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 933
    const-string v3, "IMSPhone/IMSInterface"

    const-string v4, "  getLastCallFailCause"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 935
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0xa

    new-array v1, v3, [I

    .line 936
    .local v1, cause:[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v1, v3

    .line 937
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 938
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 939
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 940
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 941
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1663
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1671
    return-void
.end method

.method public getModemDefaultApn(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2319
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 947
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS getMute..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1676
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 957
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1681
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1686
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1988
    return-void
.end method

.method public getPhoneBookEntry(Ljava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2314
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 1993
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2387
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 967
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1691
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 2122
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 976
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 0
    .parameter "numLockType"
    .parameter "lockType"
    .parameter "result"

    .prologue
    .line 1998
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1696
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1701
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1431
    return-void
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2064
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2003
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2299
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2344
    return-void
.end method

.method public getWipiSysInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2066
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 1706
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    const/16 v3, 0x3ea

    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    const-string v1, "IMSPhone/IMSInterface"

    const-string v2, "DIALING timer  removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1, p1}, Lcom/sec/android/internal/ims/IMSService;->endCall(I)V

    .line 998
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 999
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1000
    iget v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1001
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1003
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1023
    iget v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/IMSInterface;->checkForCallIDInCallsList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    const-string v1, "IMSPhone/IMSInterface"

    const-string v2, "hangupForegroundResumeBackground..Ending the Call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->endCall(I)V

    .line 1049
    :goto_0
    return-void

    .line 1034
    :cond_0
    const-string v1, "IMSPhone/IMSInterface"

    const-string v2, "hangupForegroundResumeBackground...Check...Call Already Ended!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1036
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1037
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public hangupVT(ILandroid/os/Message;)V
    .locals 0
    .parameter "errCause"
    .parameter "result"

    .prologue
    .line 2395
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->rejectCall(Landroid/os/Message;)V

    .line 1056
    return-void
.end method

.method public iccAUTH(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1715
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 2088
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1712
    return-void
.end method

.method public iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2176
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2341
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 2091
    return-void
.end method

.method public invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "type"
    .parameter "response"

    .prologue
    .line 2159
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 2
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1718
    const-string v0, "IMSPhone/IMSInterface"

    const-string/jumbo v1, "invokeOemRilRequestRaw()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1721
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1726
    return-void
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2110
    .local p2, qosFlows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public notifyIMSCallChanged(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1229
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  notifyIMSCallChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1232
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1731
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1736
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 1065
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1073
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1741
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1747
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2169
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2337
    return-void
.end method

.method public queryLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2072
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1752
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 2008
    return-void
.end method

.method public registerCallTrackerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    .line 1223
    return-void
.end method

.method public registerForCallReestablishInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2199
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2291
    return-void
.end method

.method public registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2287
    return-void
.end method

.method public registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2279
    return-void
.end method

.method public registerForIMSCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1217
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1218
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1219
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2259
    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2271
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2295
    return-void
.end method

.method public registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2255
    return-void
.end method

.method public registerForSimLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2308
    return-void
.end method

.method public registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2205
    return-void
.end method

.method public registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2275
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2283
    return-void
.end method

.method public rejectCall()V
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 791
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 1079
    const-string v1, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rejectCall  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_0

    .line 1083
    const-string v1, "IMSPhone/IMSInterface"

    const-string v2, "DIALING IMS_CALL_RECV_OPTION_REJECT_AS_BUSY  removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2, v5, v4}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 1099
    :goto_0
    const-string v1, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rejectCall: callId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1107
    .local v0, message:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 1108
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1110
    return-void

    .line 1086
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    .line 1088
    const-string v1, "IMSPhone/IMSInterface"

    const-string v2, "DIALING IMS_CALL_RECV_OPTION_REJECT_AS_TEMP_UNAVAILABLE  removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2, v6, v4}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    goto :goto_0

    .line 1094
    :cond_1
    const-string v1, "IMSPhone/IMSInterface"

    const-string/jumbo v2, "rejectCall IMS_CALL_RECV_OPTION_REJECT_AS_DECLINE  removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2, v4, v4}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    goto :goto_0
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 2106
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1757
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1762
    return-void
.end method

.method public requestAuthForMediaShare(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v3, 0x22

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v0, "IMSPhone/IMSInterface"

    const-string/jumbo v1, "requestAuthForMediaShare Error Scenario!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 2325
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1118
    return-void
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 2118
    return-void
.end method

.method public sendAKAReceivedKeys([B)V
    .locals 2
    .parameter "isimResponse"

    .prologue
    .line 1407
    const-string v0, "IMSInterface"

    const-string/jumbo v1, "sendAKAReceivedKeys : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/IMSService;->sendISIMRespToNative([B)V

    .line 1409
    const-string v0, "IMSInterface"

    const-string/jumbo v1, "sendAKAReceivedKeys : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1767
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1772
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1777
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1126
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 2014
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1782
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2369
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "retry"
    .parameter "messageRef"
    .parameter "result"

    .prologue
    .line 2375
    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2190
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "retry"
    .parameter "messageRef"
    .parameter "result"

    .prologue
    .line 2379
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2193
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2020
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1135
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 1435
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "prefMode"
    .parameter "result"

    .prologue
    .line 2094
    return-void
.end method

.method public sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2322
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1787
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 1792
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1143
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1797
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "response"

    .prologue
    .line 1802
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 1152
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1161
    return-void
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .locals 0
    .parameter "cb"
    .parameter "result"

    .prologue
    .line 2025
    return-void
.end method

.method public setCbsOnOff([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2098
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1807
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "result"

    .prologue
    .line 1812
    return-void
.end method

.method public setCdmaDataProfile(ILandroid/os/Message;)V
    .locals 0
    .parameter "dataConnection"
    .parameter "response"

    .prologue
    .line 2030
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1817
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1822
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 2327
    return-void
.end method

.method public setCdmaSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sysPorpertyID"
    .parameter "sysPropertyValue"
    .parameter "response"

    .prologue
    .line 2036
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2132
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2164
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1828
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2333
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1833
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1839
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 2075
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1844
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 2041
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 1169
    const-string v1, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setMicrophoneMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1173
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1175
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1176
    :cond_2
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1849
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 1855
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2239
    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2235
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2243
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2247
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2251
    return-void
.end method

.method public setOnNewCdmaSMS(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2263
    return-void
.end method

.method public setOnSMSCenterNumber(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2267
    return-void
.end method

.method public setOnSS(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2231
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2182
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 1183
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
    .line 2391
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1191
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1860
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1865
    return-void
.end method

.method public setRilPowerOff(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2178
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2046
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1870
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "i"
    .parameter "msg"

    .prologue
    .line 2127
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1875
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1880
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 0
    .parameter "powerLevel"
    .parameter "result"

    .prologue
    .line 2316
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "result"

    .prologue
    .line 2138
    return-void
.end method

.method public setUserAPNtoProfile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "profile"
    .parameter "result"

    .prologue
    .line 1491
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    .line 1887
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "ipVersion"
    .parameter "result"

    .prologue
    .line 2151
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"
    .parameter "cid"

    .prologue
    .line 2156
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "response"

    .prologue
    .line 1893
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .parameter "callId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2102
    .local p2, qosFlows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1199
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1207
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "type"
    .parameter "result"

    .prologue
    .line 2350
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 2086
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 1898
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 2211
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1903
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2217
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2361
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2364
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1908
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 2214
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1913
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 2220
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2359
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2367
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 1918
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 2114
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1215
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2241
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2237
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2245
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2249
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2253
    return-void
.end method

.method public unSetOnNewCdmaSMS(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2265
    return-void
.end method

.method public unSetOnSS(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2233
    return-void
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2186
    return-void
.end method

.method public unSetOnmSmsCenterNumber(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2269
    return-void
.end method

.method public unregisterForCallReestablishInd(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2202
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2293
    return-void
.end method

.method public unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2289
    return-void
.end method

.method public unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2281
    return-void
.end method

.method public unregisterForIMSCallChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1226
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2261
    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2273
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2297
    return-void
.end method

.method public unregisterForRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2257
    return-void
.end method

.method public unregisterForSimLockInfoChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2311
    return-void
.end method

.method public unregisterForSubscriptionReady(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2208
    return-void
.end method

.method public unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2277
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2285
    return-void
.end method

.method public writeErrorData(IIIILjava/lang/String;)V
    .locals 7
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, errString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 506
    .local v0, errCode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 508
    .local v2, flag:I
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Error Event ---Entering function"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sparse-switch p2, :sswitch_data_0

    .line 613
    const/4 v2, 0x0

    .line 620
    :goto_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 623
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 624
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v4, "IMS_ERROR_CODE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v4, "IMS_ERROR_STRING"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 513
    :sswitch_0
    const-string v0, "101"

    .line 514
    const/4 v2, 0x1

    .line 515
    const-string v1, "PPP open failed"

    .line 518
    goto :goto_0

    .line 522
    :sswitch_1
    const-string v0, "116"

    .line 523
    const/4 v2, 0x1

    .line 524
    const-string v1, "PPP Closed"

    .line 527
    goto :goto_0

    .line 531
    :sswitch_2
    const-string v0, "202"

    .line 532
    const/4 v2, 0x1

    .line 533
    const-string v1, "SIP register failure"

    .line 535
    goto :goto_0

    .line 539
    :sswitch_3
    const-string v0, "203"

    .line 540
    const/4 v2, 0x1

    .line 541
    const-string v1, "SIP register tx failure"

    .line 543
    goto :goto_0

    .line 547
    :sswitch_4
    const-string v0, "206"

    .line 548
    const/4 v2, 0x1

    .line 549
    const-string v1, "403 resp. for registering"

    .line 551
    goto :goto_0

    .line 555
    :sswitch_5
    const-string v0, "301"

    .line 556
    const/4 v2, 0x1

    .line 557
    const-string v1, "Media RTP timeout"

    .line 559
    goto :goto_0

    .line 563
    :sswitch_6
    const-string v0, "302"

    .line 564
    const/4 v2, 0x1

    .line 565
    const-string v1, "Originate wait QOS timeout"

    .line 567
    goto :goto_0

    .line 573
    :sswitch_7
    const-string v0, "303"

    .line 574
    const/4 v2, 0x1

    .line 575
    const-string v1, "Invite failure"

    .line 577
    goto :goto_0

    .line 582
    :sswitch_8
    const-string v0, "304"

    .line 583
    const/4 v2, 0x1

    .line 584
    const-string v1, "User canceled call"

    .line 586
    goto :goto_0

    .line 590
    :sswitch_9
    const-string v0, "305"

    .line 591
    const/4 v2, 0x1

    .line 592
    const-string v1, "QOS failure"

    .line 594
    goto :goto_0

    .line 598
    :sswitch_a
    const-string v0, "307"

    .line 599
    const/4 v2, 0x1

    .line 600
    const-string v1, "Ack for 200 OK but call terminated"

    .line 602
    goto :goto_0

    .line 606
    :sswitch_b
    const-string v0, "308"

    .line 607
    const/4 v2, 0x1

    .line 608
    const-string v1, "ACK wait timer timeout"

    .line 610
    goto :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_3
        0x71 -> :sswitch_4
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_8
        0xd6 -> :sswitch_7
        0xdb -> :sswitch_b
        0xde -> :sswitch_0
        0xe1 -> :sswitch_2
        0xe2 -> :sswitch_6
        0xe4 -> :sswitch_9
        0xea -> :sswitch_1
        0xeb -> :sswitch_5
        0x12f -> :sswitch_7
    .end sparse-switch
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2080
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1444
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1451
    return-void
.end method

.class public Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;,
        Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;,
        Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
    }
.end annotation


# static fields
.field static final CFF_DATA_MASK:I = 0xf0

.field static final CFF_DATA_RESET:I = 0xf

.field static final CFF_DATA_SHIFT:I = 0x4

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_CSP_ENABLED:I = 0x3

.field private static final CPHS_SST_CSP_MASK:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

#the value of this static final field might be set in the static constructor
.field protected static final DBG:Z = false

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_FILE_STATUS_DONE:I = 0x26

.field private static final EVENT_GET_GID1_DONE:I = 0x2b

.field protected static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_WHEN_LOCKED_DONE:I = 0x2a

.field protected static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_M_DONE:I = 0x2c

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_IRM_DONE:I = 0x2d

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPL_DONE:I = 0x24

.field private static final EVENT_GET_PERSO_DONE:I = 0x2e

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field protected static final EVENT_GET_ROAMING_DONE:I = 0x32

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x22

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x23

.field protected static final EVENT_GET_SPONIMSI1_DONE:I = 0x2f

.field protected static final EVENT_GET_SPONIMSI2_DONE:I = 0x30

.field protected static final EVENT_GET_SPONIMSI3_DONE:I = 0x31

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CSP_DONE:I = 0x25

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_LOCKED:I = 0x29

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final KEY_GID1:Ljava/lang/String; = "key_gid1"

.field static final KEY_ICCID:Ljava/lang/String; = "key_iccid"

.field static final KEY_PAYSTATE:Ljava/lang/String; = "key_paystate"

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field private static final PATH_MSISDN:Ljava/lang/String; = "/data/misc/radio/dlnk"

.field static final PROPERTY_SIM_ROAMING:Ljava/lang/String; = "gsm.sim.roaming"

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field static final propNameChangedICC:Ljava/lang/String; = "ril.isIccChanged"


# instance fields
.field CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

.field IsOPLExist:Z

.field IsOnsExist:Z

.field IsPNNExist:Z

.field NV_cfflag_video:Z

.field NV_cfflag_voice:Z

.field OPL_INDEX:[I

.field OPL_LAC1:[I

.field OPL_LAC2:[I

.field OPL_MCCMNC:[Ljava/lang/String;

.field OPL_count:I

.field PNN_Value:[Ljava/lang/String;

.field efCPHS_MWI:[B

.field efMWIS:[B

.field iccType:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field isAvailableCFIS:Z

.field isAvailableCHV1:Z

.field isAvailableFDN:Z

.field isAvailableMBDN:Z

.field isAvailableMSISDN:Z

.field isAvailableMWIS:Z

.field isAvailableO2PERSO:Z

.field isAvailableSMS:Z

.field isAvailableSMSP:Z

.field isAvailableSPN:Z

.field isEnabledCSP:Z

.field isEnabledOPL:Z

.field isEnabledPNN:Z

.field isRefreshedBySTK:Z

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCff:[B

.field mEfCfis:[B

.field mOldICCID:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field private mSponImsi:[Ljava/lang/String;

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field private perso:[B

.field pnnHomeName:Ljava/lang/String;

.field private sktImsiM:Ljava/lang/String;

.field private sktIrm:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field spnDisplayRuleOverride:I

.field spnOverride:Ljava/lang/String;

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

.field spn_cphs:Ljava/lang/String;

.field videocallForwardingEnabled:Z

.field voicecallForwardingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    .line 325
    const/16 v0, 0x7a

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "405025"

    aput-object v3, v0, v2

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 108
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/16 v5, 0x29

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 128
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .line 145
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 160
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 161
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 163
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 164
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 165
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 166
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 171
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 173
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 177
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 179
    new-instance v1, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    .line 198
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    .line 203
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 204
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 206
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 207
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    .line 211
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 213
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    .line 214
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    .line 215
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    .line 216
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    .line 217
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 349
    new-instance v1, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 351
    new-instance v1, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 353
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 356
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v1, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p0, v5, v4}, Lcom/android/internal/telephony/IccCard;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p0, v5, v4}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    return-void
.end method

.method private checkCFISavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1384
    const-string v1, "GSM"

    const-string v2, "Enter checkCFIS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1389
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1390
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(CFIS) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(CFIS) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableCFIS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :goto_1
    return-void

    .line 1396
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1398
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->CFI_STATUS:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    goto :goto_1

    .line 1403
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkCHV1available([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x1

    .line 1131
    const-string v1, "GSM"

    const-string v2, "Enter  checkCHV1available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1139
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(CHV1) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(CHV1) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableCHV1 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :goto_1
    return-void

    .line 1145
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1147
    const-string v1, "GSM"

    const-string v2, "3G - CHV1 available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    goto :goto_1

    .line 1151
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkEONSavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    .line 1055
    const-string v1, "GSM"

    const-string v2, "Enter checkEONS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1064
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(PNN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(PNN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 1069
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(OPL) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(OPL) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabledPNN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabledOPL is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_1
    return-void

    .line 1074
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->PLMN_NETWORK_NAME:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 1078
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->OPERATOR_PLMN_LIST:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 1088
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    goto :goto_1

    .line 1082
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkFDNavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1097
    const-string v1, "GSM"

    const-string v2, "Enter  checkFDNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1105
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(FDN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(FDN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableFDN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_1
    return-void

    .line 1110
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1112
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    goto :goto_1

    .line 1117
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkMBDNavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x1

    .line 1310
    const-string v1, "GSM"

    const-string v2, "Enter  checkMBDNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1316
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(MBDN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(MBDN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMBDN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-ne v1, v5, :cond_3

    .line 1340
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1341
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc9

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1349
    :goto_1
    return-void

    .line 1322
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1324
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->MBDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto :goto_0

    .line 1329
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1343
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1344
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_1
.end method

.method private checkMSISDNavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x1

    .line 1199
    const-string v1, "GSM"

    const-string v2, "Enter  checkMSISDNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1206
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1207
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(MSISDN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(MSISDN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    if-ne v1, v5, :cond_1

    .line 1230
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f40

    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6f4a

    :goto_1
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1232
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1235
    :cond_1
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMSISDN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :goto_2
    return-void

    .line 1213
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1215
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->MSISDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    goto :goto_2

    .line 1220
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1230
    :cond_4
    const/16 v1, 0x6f4e

    goto :goto_1
.end method

.method private checkMWISavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1352
    const-string v1, "GSM"

    const-string v2, "Enter checkMWIS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1358
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(MWIS) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(MWIS) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMWIS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :goto_1
    return-void

    .line 1364
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1366
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1367
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    goto :goto_1

    .line 1371
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSMSPavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1240
    const-string v1, "GSM"

    const-string v2, "Enter  checkSMSPavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1249
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SMSP) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SMSP) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableSMSP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_1
    return-void

    .line 1254
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    goto :goto_1

    .line 1261
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSMSavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1274
    const-string v1, "GSM"

    const-string v2, "Enter  checkSMSavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1282
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SMS) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SMS) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableSMS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_1
    return-void

    .line 1288
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1290
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    goto :goto_1

    .line 1295
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSPNavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1165
    const-string v1, "GSM"

    const-string v2, "Enter  checkSPNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1173
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SPN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SPN) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableSPN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :goto_1
    return-void

    .line 1178
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->SPN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    goto :goto_1

    .line 1185
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSimChanged()V
    .locals 7

    .prologue
    .line 2444
    const-string v4, "GSM"

    const-string v5, "checkSimChanged enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2450
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2451
    const-string v4, "key_iccid"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 2454
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 2456
    .local v2, old:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2457
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2459
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2463
    const-string/jumbo v4, "ril.isIccChanged"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 2467
    :cond_1
    sget-boolean v4, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "old iccid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  current is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 2471
    .local v1, isSimChanged:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 2472
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2474
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2475
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2477
    const-string/jumbo v4, "ril.isIccChanged"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2469
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isSimChanged:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2479
    .restart local v1       #isSimChanged:Z
    :cond_4
    const-string/jumbo v4, "ril.isIccChanged"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findTheEnabledServiceInSST(BI)Z
    .locals 3
    .parameter "b"
    .parameter "position"

    .prologue
    .line 1041
    const-string v0, "GSM"

    const-string v1, "findTheEnabledServiceInSST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte before = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 1046
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte After = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1049
    const/4 v0, 0x1

    .line 1051
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "spnOverrideString"

    .prologue
    .line 2867
    if-nez p1, :cond_0

    .line 2868
    const/4 v10, 0x0

    .line 2895
    :goto_0
    return-object v10

    .line 2874
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2875
    .local v2, curLoc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 2876
    .local v5, l:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 2878
    .local v1, c:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2879
    .local v9, spnOverrides:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v8, v0, v4

    .line 2880
    .local v8, so:Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2882
    .local v7, s:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2884
    const/4 v10, 0x0

    aget-object v10, v7, v10

    goto :goto_0

    .line 2887
    :cond_1
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2888
    .local v3, entryLoc:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2889
    array-length v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2890
    :cond_2
    const/4 v10, 0x1

    aget-object v10, v7, v10

    goto :goto_0

    .line 2879
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2895
    .end local v3           #entryLoc:[Ljava/lang/String;
    .end local v7           #s:[Ljava/lang/String;
    .end local v8           #so:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3351
    if-eqz p1, :cond_2

    .line 3354
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v1, v2, :cond_1

    .line 3360
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3439
    :goto_0
    return-void

    .line 3363
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3367
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3437
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3369
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3371
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f46

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3373
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3375
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3378
    :pswitch_1
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 3379
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3380
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 3381
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3383
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3385
    :cond_3
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3394
    .end local v0           #data:[B
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f14

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3396
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3391
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto :goto_1

    .line 3399
    :pswitch_2
    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 3400
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3401
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3403
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3405
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3406
    :cond_5
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3410
    .end local v0           #data:[B
    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3412
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f18

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3414
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3416
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3420
    :pswitch_3
    if-eqz p2, :cond_9

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9

    .line 3421
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3422
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3425
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3427
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3428
    :cond_7
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    .end local v0           #data:[B
    :cond_8
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3430
    :cond_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3431
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 3561
    array-length v7, p1

    div-int/lit8 v5, v7, 0x2

    .line 3563
    .local v5, usedCspGroups:I
    const/16 v6, -0x40

    .line 3565
    .local v6, valueAddedServicesGroup:B
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3566
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 3567
    mul-int/lit8 v7, v4, 0x2

    aget-byte v7, p1, v7

    if-ne v7, v6, :cond_3

    .line 3568
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_1

    .line 3574
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3608
    :cond_0
    :goto_1
    return-void

    .line 3576
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3579
    const-string v7, "GSM"

    const-string v8, "[CSP] Set Automatic Network Selection"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3582
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3585
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3586
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3587
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3589
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 3590
    const-string v7, "GSM"

    const-string v8, "[CSP] Set Automatic Network Selection - oemhookraw"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3595
    :goto_2
    if-eqz v1, :cond_2

    .line 3596
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3597
    :cond_2
    if-eqz v0, :cond_0

    .line 3598
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3599
    :catch_0
    move-exception v3

    .line 3600
    .local v3, ex:Ljava/io/IOException;
    const-string v7, "LOG_TAG"

    const-string v8, "close fail!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3591
    .end local v3           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 3592
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception occured"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3566
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 3607
    :cond_4
    const-string v7, "GSM"

    const-string v8, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 2487
    sparse-switch p1, :sswitch_data_0

    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2512
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2522
    :goto_0
    return-void

    .line 2489
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2490
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2494
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2495
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2499
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2500
    const-string v0, "GSM"

    const-string v1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2487
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleFileUpdateExt(I)V
    .locals 6
    .parameter "efid"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3163
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 3164
    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    .line 3166
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:HandleFileUpdateEXT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x2fe2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3169
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3171
    sparse-switch p1, :sswitch_data_0

    .line 3246
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "810301010382028281830100"

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 3247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 3250
    :goto_0
    return-void

    .line 3175
    :sswitch_0
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f40

    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f4a

    :goto_1
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 3177
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.PB_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3180
    .local v0, intent:Landroid/content/Intent;
    goto :goto_0

    .line 3175
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/16 v1, 0x6f4e

    goto :goto_1

    .line 3184
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc9

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3185
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 3189
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fad

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3190
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 3195
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fca

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3196
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 3202
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fcb

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3203
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3204
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f13

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3205
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3211
    :sswitch_5
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3215
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fcd

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3216
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3221
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc6

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3223
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3224
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc5

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3226
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3230
    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f38

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3231
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3236
    :sswitch_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f16

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3237
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3241
    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3242
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3171
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f14 -> :sswitch_5
        0x6f15 -> :sswitch_a
        0x6f16 -> :sswitch_9
        0x6f18 -> :sswitch_5
        0x6f38 -> :sswitch_8
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_5
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_7
        0x6fc6 -> :sswitch_7
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_3
        0x6fcb -> :sswitch_4
        0x6fcd -> :sswitch_6
    .end sparse-switch
.end method

.method private handleOPL(Ljava/util/ArrayList;)V
    .locals 13
    .parameter "messages"

    .prologue
    const/16 v12, 0xe

    const/16 v11, 0xa

    const/4 v10, 0x6

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 2742
    const-string v2, "ffffffffffffffff"

    .line 2744
    .local v2, fdata:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2746
    .local v0, count:I
    iput v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    .line 2748
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    .line 2749
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    .line 2750
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    .line 2751
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    .line 2754
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2756
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 2758
    .local v1, data:[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2761
    .local v4, sdata:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2762
    const-string v5, "GSM"

    const-string v6, "[handleOPL] EF_OPL contains Null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 2765
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v8, v5, v3

    .line 2766
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v8, v5, v3

    .line 2767
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v8, v5, v3

    .line 2783
    :goto_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_MCCMNC["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_LAC1["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_LAC2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_INDEX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    .line 2790
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    .line 2754
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2769
    :cond_0
    const-string v5, "GSM"

    const-string v6, "[handleOPL] EF_OPL contains Data(Not Null)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 2772
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 2773
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 2774
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 2775
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_1

    .line 2777
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v8, v5, v3

    .line 2778
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v8, v5, v3

    .line 2779
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v8, v5, v3

    goto/16 :goto_1

    .line 2794
    .end local v1           #data:[B
    .end local v4           #sdata:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handlePNN(Ljava/util/ArrayList;)V
    .locals 10
    .parameter "messages"

    .prologue
    const/4 v9, 0x0

    .line 2705
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2707
    .local v0, count:I
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    .line 2709
    const-string v2, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    .line 2711
    .local v2, fdata:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2712
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 2714
    .local v1, data:[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2716
    .local v4, sdata:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2717
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v6, v1

    invoke-direct {v5, v1, v9, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2719
    .local v5, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2720
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_0

    .line 2721
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2722
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 2730
    :cond_0
    :goto_1
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handlePnns]Load PNN Value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .line 2711
    .end local v5           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2724
    .restart local v5       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v9, v8}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_1

    .line 2735
    .end local v5           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    const-string v6, "GSM"

    const-string v7, "[handlePNNs] data is  Null!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2739
    .end local v1           #data:[B
    .end local v4           #sdata:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 1
    .parameter "refreshResponse"

    .prologue
    .line 2525
    if-nez p1, :cond_1

    .line 2526
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleSimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2578
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 2532
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "handleSimRefresh received"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2540
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 2575
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2542
    :pswitch_0
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2543
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 2546
    :pswitch_1
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2548
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2549
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    .line 2552
    :pswitch_2
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2565
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 2540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSktEf([B)Ljava/lang/String;
    .locals 13
    .parameter "data"

    .prologue
    .line 2648
    const-wide/16 v2, 0x0

    .line 2649
    .local v2, imsi_s1:J
    const-wide/16 v4, 0x0

    .line 2653
    .local v4, imsi_s2:J
    const/16 v9, 0xa

    new-array v6, v9, [C

    fill-array-data v6, :array_0

    .line 2655
    .local v6, mintab:[C
    const/4 v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-long v4, v9

    .line 2656
    const/4 v9, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x3

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    or-int/2addr v9, v10

    int-to-long v2, v9

    .line 2658
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_0

    .line 2659
    const-string v0, "0000000"

    .line 2677
    .local v0, Min1:Ljava/lang/String;
    :goto_0
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Min1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2680
    .local v1, Min2:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x64

    div-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2681
    const-wide/16 v9, 0x64

    rem-long/2addr v4, v9

    .line 2682
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    div-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2683
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    rem-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2685
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Min2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-eq v9, v10, :cond_2

    .line 2688
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2690
    :goto_1
    return-object v9

    .line 2661
    .end local v0           #Min1:Ljava/lang/String;
    .end local v1           #Min2:Ljava/lang/String;
    :cond_0
    const/16 v9, 0xe

    ushr-long v7, v2, v9

    .line 2662
    .local v7, temp:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x64

    div-long v10, v7, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2663
    .restart local v0       #Min1:Ljava/lang/String;
    const-wide/16 v9, 0x64

    rem-long/2addr v7, v9

    .line 2664
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    div-long v10, v7, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2665
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    rem-long v10, v7, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2666
    const-wide/16 v9, 0x3fff

    and-long/2addr v2, v9

    .line 2668
    const/16 v9, 0xa

    ushr-long v9, v2, v9

    const-wide/16 v11, 0xf

    and-long v7, v9, v11

    .line 2669
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    cmp-long v10, v7, v10

    if-nez v10, :cond_1

    const-wide/16 v7, 0x0

    .end local v7           #temp:J
    :cond_1
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2670
    const-wide/16 v9, 0x3ff

    and-long v7, v2, v9

    .line 2671
    .restart local v7       #temp:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x64

    div-long v10, v7, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2672
    const-wide/16 v9, 0x64

    rem-long/2addr v7, v9

    .line 2673
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    div-long v10, v7, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2674
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    rem-long v10, v7, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2690
    .end local v7           #temp:J
    .restart local v1       #Min2:Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 2653
    nop

    :array_0
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method private handleSms([B)V
    .locals 7
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 2592
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 2593
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2598
    array-length v1, p1

    .line 2602
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2603
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2604
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2606
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2608
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmsServiceCenter(Ljava/lang/String;)V
    .locals 0
    .parameter "smsc"

    .prologue
    .line 2702
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2611
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2613
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2614
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2616
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2617
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2623
    array-length v4, v0

    .line 2627
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2628
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2629
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 2631
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2636
    aput-byte v10, v0, v9

    .line 2613
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2644
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsCSPEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3615
    const-string v2, "GSM"

    const-string v3, "SIMRecords: isCphsCSPEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3618
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3486
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3487
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3304
    if-nez p1, :cond_1

    .line 3317
    :cond_0
    :goto_0
    return v2

    .line 3306
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 3307
    goto :goto_0

    .line 3310
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3311
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3312
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 3313
    goto :goto_0
.end method

.method private makeCSPtable([B)V
    .locals 2
    .parameter "table"

    .prologue
    .line 3543
    const-string v0, "GSM"

    const-string v1, "Enter  makeCSPtable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    new-instance v0, Lcom/android/internal/telephony/gsm/simCSPtable;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    .line 3545
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 3448
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3450
    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 3452
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3454
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 3455
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v3           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v3, v4

    .line 3458
    .end local v4           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    .line 3459
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 3464
    :cond_1
    if-nez v2, :cond_4

    .line 3480
    :cond_2
    return-void

    .line 3452
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 3468
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 3470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 3472
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3475
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 3476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3477
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 2
    .parameter "carrier"

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2863
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 3
    .parameter "nwkName"

    .prologue
    .line 2971
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceMailByCountry: NetworkName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    if-nez p1, :cond_1

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 2976
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    if-nez v0, :cond_2

    .line 2977
    const-string v0, "GSM"

    const-string/jumbo v1, "setVoiceMailByCountry() is called before making mVmConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2981
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2986
    const-string v0, "DTM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KPP"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KPN"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VDS"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XFA"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XFM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XFC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XFE"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XFV"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 2998
    :cond_3
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceMailByCountry: isVoiceMailFixed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2588
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsDisposed:Z

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 434
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3019
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 3021
    const-string v0, "GSM"

    const-string v1, "fetchSimRecords:before SystemProperties.get() "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    const-string/jumbo v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    .line 3026
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 3029
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3032
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3060
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f3e

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3061
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3065
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x6f4a

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 3067
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3070
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3071
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3073
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3074
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3076
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3077
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3081
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3082
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3089
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3092
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3096
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3097
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3098
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3099
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3103
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 3105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3106
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3110
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3112
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3114
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_EnableOnsDisplay"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    const-string v0, "Try to read ONS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3119
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3121
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3125
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3128
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3148
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f02

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3149
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3151
    const-string v0, "GSM"

    const-string v1, "[Voicemail] create VoiceMailcontacts after sim loading."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    if-nez v0, :cond_1

    .line 3153
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 3156
    :goto_0
    return-void

    .line 3155
    :cond_1
    const-string v0, "GSM"

    const-string v1, "[Voicemail] mVmConfig is not null. it is already exist."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 437
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 439
    return-void
.end method

.method public getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "MCCMNC"
    .parameter "LAC"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, EonsName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, operatorNumeric:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 524
    const-string v7, "MCCMNC is null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-object v6

    .line 528
    :cond_0
    if-nez v5, :cond_1

    .line 529
    const-string v7, "SIMOperatorNumeric is null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 538
    :cond_2
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 540
    .local v4, isVPLMN:Z
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    if-eqz v6, :cond_5

    .line 541
    if-nez v4, :cond_8

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-nez v6, :cond_8

    .line 542
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v0, v6, v7

    .line 559
    :cond_5
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    if-eqz v6, :cond_6

    if-nez v0, :cond_6

    .line 560
    if-nez v4, :cond_a

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 567
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 568
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7

    .line 569
    const/4 v0, 0x0

    .end local v4           #isVPLMN:Z
    :cond_7
    :goto_3
    move-object v6, v0

    .line 577
    goto :goto_0

    .line 543
    .restart local v4       #isVPLMN:Z
    :cond_8
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-eqz v6, :cond_5

    .line 544
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    if-ge v3, v6, :cond_5

    .line 545
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_9

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v7, v7, v3

    const/16 v8, 0x64

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, expr:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v6, v6, v3

    if-lt p2, v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v6, v6, v3

    if-gt p2, v6, :cond_9

    .line 549
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v3

    if-eqz v6, :cond_5

    .line 550
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v7, v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v0, v6, v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 544
    .end local v2           #expr:Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 563
    .end local v3           #i:I
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 572
    .end local v4           #isVPLMN:Z
    :catch_0
    move-exception v1

    .line 573
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "GSM"

    const-string v7, "Got exception while searching for EONS name, falling back to null"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 3265
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    if-lez v1, :cond_1

    .line 3266
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 3287
    .local v0, rule:I
    :cond_0
    :goto_0
    return v0

    .line 3267
    .end local v0           #rule:I
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    if-nez v1, :cond_2

    .line 3268
    const-string v1, "GSM"

    const-string v2, "[getDisplayRule] SPN service disabled (EF_UST)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    const/4 v0, 0x2

    .restart local v0       #rule:I
    goto :goto_0

    .line 3270
    .end local v0           #rule:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 3271
    :cond_3
    const-string v1, "GSM"

    const-string v2, "[getDisplayRule] showing plmn only"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    const/4 v0, 0x2

    .restart local v0       #rule:I
    goto :goto_0

    .line 3274
    .end local v0           #rule:I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3275
    const/4 v0, 0x1

    .line 3276
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3278
    :cond_5
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3281
    .end local v0           #rule:I
    :cond_6
    const/4 v0, 0x2

    .line 3282
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 3284
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 2946
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2947
    .local v0, simOper:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeHomeOn() simOper["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], getIMSI()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2950
    const-string v1, "GSM"

    const-string v2, "getFakeHomeOn() Check only MCC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2956
    :goto_0
    return-object v1

    .line 2952
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2953
    const-string v1, "GSM"

    const-string v2, "getFakeHomeOn() Check MCC MNC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2956
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2962
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2963
    .local v0, simOper:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2payState()Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3494
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3495
    .local v2, simState:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3496
    .local v1, simOper:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->NOT_READY:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    .line 3498
    .local v0, result:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getO2payState SIMState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  MCCMNC["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "perso "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3501
    const-string v3, "23410"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3502
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    if-ne v3, v5, :cond_2

    .line 3503
    const-string v3, "isAvailableO2PERSO is true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3504
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    if-nez v3, :cond_0

    .line 3505
    const-string v3, "It should not enter here!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3522
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The result of getO2payState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3523
    return-object v0

    .line 3506
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 3507
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3509
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3512
    :cond_2
    const-string v3, "isAvailableO2PERSO is false. Check FDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3513
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    if-ne v3, v5, :cond_3

    .line 3514
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3516
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3520
    :cond_4
    const-string v3, "SIM state is not READY or SIM card is not O2 SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 997
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 998
    const-string v4, "GSM"

    const-string v5, "getOperatorNumeric: IMSI == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_0
    return-object v3

    .line 1001
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v4, :cond_2

    .line 1002
    :cond_1
    const-string v4, "GSM"

    const-string v5, "getSIMOperatorNumeric: bad mncLength"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1006
    :cond_2
    const-string v3, "LGT"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1007
    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, simType:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "18"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1009
    :cond_3
    const-string v3, "45006"

    goto :goto_0

    .line 1014
    .end local v2           #simType:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_6

    .line 1015
    const/16 v3, 0x7e

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "405805"

    aput-object v3, v0, v6

    const/4 v3, 0x1

    const-string v4, "405799"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "405025"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "405026"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "405027"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "405028"

    aput-object v4, v0, v3

    const-string v3, "405029"

    aput-object v3, v0, v7

    const/4 v3, 0x7

    const-string v4, "405030"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "405031"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "405032"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "405033"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "405034"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "405035"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "405036"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "405037"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "405038"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "405039"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "405040"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "405041"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "405042"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "405043"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "405044"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "405045"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "405046"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "405047"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "405800"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "405802"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "405803"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "405807"

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-string v4, "405804"

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-string v4, "405809"

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-string v4, "405852"

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-string v4, "405853"

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-string v4, "405846"

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-string v4, "405848"

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-string v4, "405849"

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "405812"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "405806"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "405750"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-string v4, "405751"

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const-string v4, "405752"

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const-string v4, "405753"

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const-string v4, "405754"

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const-string v4, "405755"

    aput-object v4, v0, v3

    const/16 v3, 0x2c

    const-string v4, "405756"

    aput-object v4, v0, v3

    const/16 v3, 0x2d

    const-string v4, "405808"

    aput-object v4, v0, v3

    const/16 v3, 0x2e

    const-string v4, "405810"

    aput-object v4, v0, v3

    const/16 v3, 0x2f

    const-string v4, "405811"

    aput-object v4, v0, v3

    const/16 v3, 0x30

    const-string v4, "405813"

    aput-object v4, v0, v3

    const/16 v3, 0x31

    const-string v4, "405814"

    aput-object v4, v0, v3

    const/16 v3, 0x32

    const-string v4, "405815"

    aput-object v4, v0, v3

    const/16 v3, 0x33

    const-string v4, "405816"

    aput-object v4, v0, v3

    const/16 v3, 0x34

    const-string v4, "405817"

    aput-object v4, v0, v3

    const/16 v3, 0x35

    const-string v4, "405801"

    aput-object v4, v0, v3

    const/16 v3, 0x36

    const-string v4, "405820"

    aput-object v4, v0, v3

    const/16 v3, 0x37

    const-string v4, "405819"

    aput-object v4, v0, v3

    const/16 v3, 0x38

    const-string v4, "405821"

    aput-object v4, v0, v3

    const/16 v3, 0x39

    const-string v4, "405925"

    aput-object v4, v0, v3

    const/16 v3, 0x3a

    const-string v4, "405875"

    aput-object v4, v0, v3

    const/16 v3, 0x3b

    const-string v4, "405876"

    aput-object v4, v0, v3

    const/16 v3, 0x3c

    const-string v4, "405877"

    aput-object v4, v0, v3

    const/16 v3, 0x3d

    const-string v4, "405879"

    aput-object v4, v0, v3

    const/16 v3, 0x3e

    const-string v4, "405818"

    aput-object v4, v0, v3

    const/16 v3, 0x3f

    const-string v4, "405878"

    aput-object v4, v0, v3

    const/16 v3, 0x40

    const-string v4, "405927"

    aput-object v4, v0, v3

    const/16 v3, 0x41

    const-string v4, "405928"

    aput-object v4, v0, v3

    const/16 v3, 0x42

    const-string v4, "405929"

    aput-object v4, v0, v3

    const/16 v3, 0x43

    const-string v4, "405926"

    aput-object v4, v0, v3

    const/16 v3, 0x44

    const-string v4, "405932"

    aput-object v4, v0, v3

    const/16 v3, 0x45

    const-string v4, "405850"

    aput-object v4, v0, v3

    const/16 v3, 0x46

    const-string v4, "405823"

    aput-object v4, v0, v3

    const/16 v3, 0x47

    const-string v4, "405824"

    aput-object v4, v0, v3

    const/16 v3, 0x48

    const-string v4, "405825"

    aput-object v4, v0, v3

    const/16 v3, 0x49

    const-string v4, "405826"

    aput-object v4, v0, v3

    const/16 v3, 0x4a

    const-string v4, "405827"

    aput-object v4, v0, v3

    const/16 v3, 0x4b

    const-string v4, "405828"

    aput-object v4, v0, v3

    const/16 v3, 0x4c

    const-string v4, "405829"

    aput-object v4, v0, v3

    const/16 v3, 0x4d

    const-string v4, "405830"

    aput-object v4, v0, v3

    const/16 v3, 0x4e

    const-string v4, "405831"

    aput-object v4, v0, v3

    const/16 v3, 0x4f

    const-string v4, "405832"

    aput-object v4, v0, v3

    const/16 v3, 0x50

    const-string v4, "405833"

    aput-object v4, v0, v3

    const/16 v3, 0x51

    const-string v4, "405834"

    aput-object v4, v0, v3

    const/16 v3, 0x52

    const-string v4, "405835"

    aput-object v4, v0, v3

    const/16 v3, 0x53

    const-string v4, "405836"

    aput-object v4, v0, v3

    const/16 v3, 0x54

    const-string v4, "405837"

    aput-object v4, v0, v3

    const/16 v3, 0x55

    const-string v4, "405838"

    aput-object v4, v0, v3

    const/16 v3, 0x56

    const-string v4, "405839"

    aput-object v4, v0, v3

    const/16 v3, 0x57

    const-string v4, "405840"

    aput-object v4, v0, v3

    const/16 v3, 0x58

    const-string v4, "405841"

    aput-object v4, v0, v3

    const/16 v3, 0x59

    const-string v4, "405842"

    aput-object v4, v0, v3

    const/16 v3, 0x5a

    const-string v4, "405843"

    aput-object v4, v0, v3

    const/16 v3, 0x5b

    const-string v4, "405844"

    aput-object v4, v0, v3

    const/16 v3, 0x5c

    const-string v4, "405845"

    aput-object v4, v0, v3

    const/16 v3, 0x5d

    const-string v4, "405847"

    aput-object v4, v0, v3

    const/16 v3, 0x5e

    const-string v4, "405851"

    aput-object v4, v0, v3

    const/16 v3, 0x5f

    const-string v4, "405822"

    aput-object v4, v0, v3

    const/16 v3, 0x60

    const-string v4, "405880"

    aput-object v4, v0, v3

    const/16 v3, 0x61

    const-string v4, "405881"

    aput-object v4, v0, v3

    const/16 v3, 0x62

    const-string v4, "405882"

    aput-object v4, v0, v3

    const/16 v3, 0x63

    const-string v4, "405883"

    aput-object v4, v0, v3

    const/16 v3, 0x64

    const-string v4, "405884"

    aput-object v4, v0, v3

    const/16 v3, 0x65

    const-string v4, "405885"

    aput-object v4, v0, v3

    const/16 v3, 0x66

    const-string v4, "405886"

    aput-object v4, v0, v3

    const/16 v3, 0x67

    const-string v4, "405908"

    aput-object v4, v0, v3

    const/16 v3, 0x68

    const-string v4, "405909"

    aput-object v4, v0, v3

    const/16 v3, 0x69

    const-string v4, "405910"

    aput-object v4, v0, v3

    const/16 v3, 0x6a

    const-string v4, "405911"

    aput-object v4, v0, v3

    const/16 v3, 0x6b

    const-string v4, "405812"

    aput-object v4, v0, v3

    const/16 v3, 0x6c

    const-string v4, "405802"

    aput-object v4, v0, v3

    const/16 v3, 0x6d

    const-string v4, "405807"

    aput-object v4, v0, v3

    const/16 v3, 0x6e

    const-string v4, "405806"

    aput-object v4, v0, v3

    const/16 v3, 0x6f

    const-string v4, "405912"

    aput-object v4, v0, v3

    const/16 v3, 0x70

    const-string v4, "405913"

    aput-object v4, v0, v3

    const/16 v3, 0x71

    const-string v4, "405914"

    aput-object v4, v0, v3

    const/16 v3, 0x72

    const-string v4, "405915"

    aput-object v4, v0, v3

    const/16 v3, 0x73

    const-string v4, "405916"

    aput-object v4, v0, v3

    const/16 v3, 0x74

    const-string v4, "405917"

    aput-object v4, v0, v3

    const/16 v3, 0x75

    const-string v4, "405918"

    aput-object v4, v0, v3

    const/16 v3, 0x76

    const-string v4, "405919"

    aput-object v4, v0, v3

    const/16 v3, 0x77

    const-string v4, "405920"

    aput-object v4, v0, v3

    const/16 v3, 0x78

    const-string v4, "405921"

    aput-object v4, v0, v3

    const/16 v3, 0x79

    const-string v4, "405922"

    aput-object v4, v0, v3

    const/16 v3, 0x7a

    const-string v4, "405923"

    aput-object v4, v0, v3

    const/16 v3, 0x7b

    const-string v4, "405924"

    aput-object v4, v0, v3

    const/16 v3, 0x7c

    const-string v4, "405930"

    aput-object v4, v0, v3

    const/16 v3, 0x7d

    const-string v4, "405931"

    aput-object v4, v0, v3

    .line 1027
    .local v0, IndExceptMccMnc:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 1028
    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1029
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1027
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1037
    .end local v0           #IndExceptMccMnc:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 3296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSktIMSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sktImsiM:Ljava/lang/String;

    return-object v0
.end method

.method public getSktIRM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sktIrm:Ljava/lang/String;

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method

.method public getVideoCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getisVoiceMailFixed()Z
    .locals 3

    .prologue
    .line 628
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceMailFixed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 1423
    const/16 v24, 0x0

    .line 1432
    .local v24, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2424
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    :cond_0
    :goto_0
    if-eqz v24, :cond_1

    .line 2433
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2436
    :cond_1
    return-void

    .line 1435
    :pswitch_1
    :try_start_1
    const-string v2, "GSM"

    const-string v4, "EVENT_SIM_LOCKED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x2fe2

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2427
    :catch_0
    move-exception v18

    .line 2429
    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "GSM"

    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2432
    if-eqz v24, :cond_1

    goto :goto_1

    .line 1440
    .end local v18           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2432
    :catchall_0
    move-exception v2

    if-eqz v24, :cond_2

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2432
    :cond_2
    throw v2

    .line 1444
    :pswitch_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 1449
    :pswitch_4
    const/16 v24, 0x1

    .line 1451
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1453
    .local v10, ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1454
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1458
    :cond_3
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_5

    .line 1463
    :cond_4
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1468
    :cond_5
    :try_start_5
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1473
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_7

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1476
    .local v28, mccmncCode:Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    aget-object v27, v11, v20

    .line 1477
    .local v27, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1478
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1484
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v2, :cond_8

    .line 1488
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1489
    .local v26, mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1499
    .end local v26           #mcc:I
    :cond_8
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 1503
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 1511
    .local v32, sp:Landroid/content/SharedPreferences;
    const-string v2, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1513
    .local v9, CF_Imsi:Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1514
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cf_imsikey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1515
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1517
    if-eqz v9, :cond_c

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1521
    const-string v2, "cf_iconkey_voice"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1522
    const-string v2, "cf_iconkey_video"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    goto/16 :goto_0

    .line 1469
    .end local v9           #CF_Imsi:Ljava/lang/String;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v32           #sp:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v14

    .line 1470
    .local v14, e:Ljava/lang/NullPointerException;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1476
    .end local v14           #e:Ljava/lang/NullPointerException;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1490
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 1491
    .restart local v14       #e:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1492
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords: Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1493
    .end local v14           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v14

    .line 1494
    .local v14, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1495
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords: Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1525
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #CF_Imsi:Ljava/lang/String;
    .restart local v15       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v32       #sp:Landroid/content/SharedPreferences;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1526
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1527
    const-string v2, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1528
    const-string v2, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1529
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1532
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1534
    const-string v2, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1535
    const-string v2, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1536
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1543
    .end local v9           #CF_Imsi:Ljava/lang/String;
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v32           #sp:Landroid/content/SharedPreferences;
    :pswitch_5
    const/16 v24, 0x1

    .line 1545
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1546
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1548
    .local v13, data:[B
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1549
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 1551
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_e

    .line 1559
    const-string v2, "GSM"

    const-string v4, "Got valid mailbox number for MBDN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1574
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 1561
    :cond_e
    const-string v2, "GSM"

    const-string v4, "Got invalid mailbox number for MBDN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 1563
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1564
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1579
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_6
    const/16 v24, 0x1

    .line 1581
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1583
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    .line 1585
    const-string v4, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_f

    const-string v2, "[MAILBOX]"

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 1595
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 1596
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1597
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1598
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1599
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1585
    :cond_f
    const-string v2, "[MBDN]"

    goto :goto_5

    .line 1607
    :cond_10
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1609
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_11

    const-string v4, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_12

    const-string v2, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_13

    .line 1616
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 1617
    const-string v2, "GSM"

    const-string v4, "MBDN data is Empty"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1619
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1609
    :cond_12
    const-string v2, " EF[MBDN]"

    goto :goto_6

    .line 1625
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_DisableEditingVMNumber"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1626
    const-string v2, "GSM"

    const-string v4, "Voicemail number is fixed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 1629
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1630
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 1634
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const/16 v24, 0x1

    .line 1636
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1638
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 1639
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1643
    :cond_15
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1645
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1646
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1648
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    const-string v4, "MSISDN: xxxxxxx"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1652
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const/16 v24, 0x0

    .line 1653
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1655
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1656
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1658
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1663
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const/16 v24, 0x1

    .line 1665
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1666
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1668
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1672
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1677
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_16

    .line 1678
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1683
    :cond_16
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    const/16 v36, 0x1

    .line 1684
    .local v36, voiceMailWaiting:Z
    :goto_7
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1689
    if-eqz v36, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v2, :cond_17

    .line 1691
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1694
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1683
    .end local v36           #voiceMailWaiting:Z
    :cond_18
    const/16 v36, 0x0

    goto :goto_7

    .line 1698
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_a
    const/16 v24, 0x1

    .line 1700
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1701
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1703
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1707
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1709
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1711
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v23, v2, 0xf

    .line 1713
    .local v23, indicator:I
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Orange VOICEMAIL INDI CPHS : countVoiceMessages - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", indicator - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v2, :cond_0

    const/16 v2, 0xa

    move/from16 v0, v23

    if-ne v0, v2, :cond_0

    .line 1715
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1724
    .end local v23           #indicator:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    if-nez v2, :cond_0

    .line 1725
    :cond_1a
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v23, v2, 0xf

    .line 1728
    .restart local v23       #indicator:I
    const/16 v2, 0xa

    move/from16 v0, v23

    if-ne v0, v2, :cond_1c

    .line 1730
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1735
    :cond_1b
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1731
    :cond_1c
    const/4 v2, 0x5

    move/from16 v0, v23

    if-ne v0, v2, :cond_1b

    .line 1732
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_8

    .line 1740
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v23           #indicator:I
    :pswitch_b
    const/16 v24, 0x1

    .line 1741
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1742
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1744
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1748
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1750
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1753
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSimChanged()V

    goto/16 :goto_0

    .line 1758
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1759
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1761
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1765
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1766
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1774
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_d
    const/16 v24, 0x1

    .line 1776
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1777
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1778
    .restart local v13       #data:[B
    const-string v19, ""

    .line 1780
    .local v19, gid1:Ljava/lang/String;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1d

    .line 1781
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v19

    .line 1785
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 1786
    .restart local v32       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1787
    .restart local v15       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_gid1"

    move-object/from16 v0, v19

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1788
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimRecord: Load gid1 done: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 1795
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v19           #gid1:Ljava/lang/String;
    .end local v32           #sp:Landroid/content/SharedPreferences;
    :pswitch_e
    const/16 v24, 0x1

    .line 1797
    :try_start_9
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1798
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1800
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_22

    .line 1823
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1f

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1826
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v11       #arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f

    aget-object v27, v11, v20

    .line 1827
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1828
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1834
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_21

    .line 1835
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v2, :cond_63

    .line 1837
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1839
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 1851
    .end local v26           #mcc:I
    :cond_21
    :goto_a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1804
    :cond_22
    :try_start_d
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    array-length v2, v13

    const/4 v4, 0x3

    if-ge v2, v4, :cond_27

    .line 1808
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1823
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_24

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1826
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v11       #arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_b
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_24

    aget-object v27, v11, v20

    .line 1827
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1828
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1834
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26

    .line 1835
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v2, :cond_65

    .line 1837
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1839
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .line 1851
    .end local v26           #mcc:I
    :cond_26
    :goto_c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 1812
    :cond_27
    :try_start_11
    array-length v2, v13

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 1813
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1823
    :try_start_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_29

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1826
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v11       #arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_d
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_29

    aget-object v27, v11, v20

    .line 1827
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1828
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1834
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2b

    .line 1835
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v2, :cond_67

    .line 1837
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1839
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    .line 1851
    .end local v26           #mcc:I
    :cond_2b
    :goto_e
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 1817
    :cond_2c
    const/4 v2, 0x3

    :try_start_15
    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1819
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_2d

    .line 1820
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1823
    :cond_2d
    :try_start_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2f

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1826
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v11       #arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_f
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_2f

    aget-object v27, v11, v20

    .line 1827
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1828
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1834
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_31

    .line 1835
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v2, :cond_69

    .line 1837
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1839
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1851
    .end local v26           #mcc:I
    :cond_31
    :goto_10
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1823
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_33

    .line 1825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1826
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v11       #arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_11
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_33

    aget-object v27, v11, v20

    .line 1827
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1828
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1834
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    .line 1835
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v4, :cond_61

    .line 1837
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1839
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1851
    .end local v26           #mcc:I
    :cond_35
    :goto_12
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_36

    .line 1854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 1823
    :cond_36
    throw v2

    .line 1861
    :pswitch_f
    const/16 v24, 0x1

    .line 1862
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1863
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1867
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const/16 v24, 0x1

    .line 1869
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1870
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1872
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1876
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1880
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1882
    const/4 v12, 0x0

    .line 1883
    .local v12, bUpdated:Z
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3a

    const/16 v35, 0x1

    .line 1884
    .local v35, voiceForwarding_cff_cphs:Z
    :goto_13
    const/16 v34, 0x0

    .line 1885
    .local v34, videoForwarding_cff_cphs:Z
    array-length v2, v13

    const/4 v4, 0x1

    if-le v2, v4, :cond_37

    .line 1886
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3b

    const/16 v34, 0x1

    .line 1890
    :cond_37
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    if-nez v2, :cond_38

    if-eqz v35, :cond_38

    .line 1891
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1892
    const/4 v12, 0x1

    .line 1895
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    if-nez v2, :cond_39

    if-eqz v34, :cond_39

    .line 1896
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 1897
    const/4 v12, 0x1

    .line 1900
    :cond_39
    if-eqz v12, :cond_0

    .line 1901
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Orange CFF CPHS : voicecall - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", videocall - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1883
    .end local v34           #videoForwarding_cff_cphs:Z
    .end local v35           #voiceForwarding_cff_cphs:Z
    :cond_3a
    const/16 v35, 0x0

    goto :goto_13

    .line 1886
    .restart local v34       #videoForwarding_cff_cphs:Z
    .restart local v35       #voiceForwarding_cff_cphs:Z
    :cond_3b
    const/16 v34, 0x0

    goto :goto_14

    .line 1908
    .end local v12           #bUpdated:Z
    .end local v34           #videoForwarding_cff_cphs:Z
    .end local v35           #voiceForwarding_cff_cphs:Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    if-nez v2, :cond_0

    .line 1910
    :cond_3d
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3f

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1912
    array-length v2, v13

    const/4 v4, 0x1

    if-le v2, v4, :cond_3e

    .line 1913
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v4, 0xa

    if-ne v2, v4, :cond_40

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 1918
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1910
    :cond_3f
    const/4 v2, 0x0

    goto :goto_15

    .line 1913
    :cond_40
    const/4 v2, 0x0

    goto :goto_16

    .line 1923
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_11
    const/16 v24, 0x1

    .line 1925
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1926
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1928
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1932
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .line 1936
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1937
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1938
    const-string v2, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1944
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_CPHS_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/16 v24, 0x1

    .line 1947
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1948
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1950
    if-eqz v10, :cond_42

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_42

    .line 1951
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 1953
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1954
    .restart local v13       #data:[B
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1956
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_41

    .line 1957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1960
    :cond_41
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Load EF_SPN_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1963
    .end local v13           #data:[B
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f18

    const/16 v5, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 1971
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_SHORT_CPHS_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const/16 v24, 0x1

    .line 1973
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1974
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1976
    if-eqz v10, :cond_0

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1977
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 1978
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1979
    .restart local v13       #data:[B
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1981
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_43

    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1985
    :cond_43
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1993
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_15
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_OPL_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/16 v24, 0x1

    .line 1997
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1998
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2001
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleOPL(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2008
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_PNN_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/16 v24, 0x1

    .line 2012
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2014
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2017
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlePNN(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2044
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_17
    const/16 v24, 0x1

    .line 2046
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2047
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2050
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2054
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_18
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2059
    :pswitch_19
    const/16 v24, 0x0

    .line 2061
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2063
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 2065
    .local v22, index:[I
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_44

    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_45

    .line 2066
    :cond_44
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2069
    :cond_45
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v22, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v22, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2076
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v22           #index:[I
    :pswitch_1a
    const/16 v24, 0x0

    .line 2077
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2078
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_46

    .line 2079
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .line 2081
    :cond_46
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2086
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_1b
    const/16 v24, 0x1

    .line 2088
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2091
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2093
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2097
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v13}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 2099
    const-string v2, "1"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2100
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_47

    const-string v2, "SST read done."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2105
    :cond_47
    :goto_17
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkEONSavailable([B)V

    .line 2106
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkFDNavailable([B)V

    .line 2107
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCHV1available([B)V

    .line 2108
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSPNavailable([B)V

    .line 2109
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMSISDNavailable([B)V

    .line 2110
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSMSavailable([B)V

    .line 2111
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMBDNavailable([B)V

    .line 2112
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMWISavailable([B)V

    .line 2113
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCFISavailable([B)V

    goto/16 :goto_0

    .line 2101
    :cond_48
    const-string v2, "2"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2102
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UST : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_17

    .line 2117
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_1c
    const/16 v24, 0x1

    .line 2119
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2121
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2125
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 2127
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2129
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsCSPEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2130
    const-string v2, "GSM"

    const-string v4, "CSP is Enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    .line 2132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f15

    const/16 v5, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2139
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_1d
    const/16 v24, 0x0

    .line 2140
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2142
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4a

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2147
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2148
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Message;

    .line 2158
    .local v29, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4c

    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_4c

    .line 2159
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2161
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2163
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_4b

    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2165
    :cond_4b
    const/16 v29, 0x0

    .line 2168
    :cond_4c
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2173
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v29           #onCphsCompleted:Landroid/os/Message;
    :cond_4d
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2174
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2176
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2181
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_1e
    const/16 v24, 0x0

    .line 2182
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2183
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_50

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2190
    :cond_4e
    :goto_18
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2191
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_4f

    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2192
    :cond_4f
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2194
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2187
    :cond_50
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 2198
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_1f
    const/16 v24, 0x0

    .line 2199
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2200
    .restart local v10       #ar:Landroid/os/AsyncResult;
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2201
    :cond_51
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2202
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 2206
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_20
    const/16 v24, 0x1

    .line 2208
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2209
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2211
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_53

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v4, :cond_52

    .line 2216
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon voice value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon video value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 2220
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2224
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 2225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 2226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v33

    .line 2227
    .local v33, sp2:Landroid/content/SharedPreferences;
    invoke-interface/range {v33 .. v33}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 2228
    .local v16, editor2:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2229
    const-string v2, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2230
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2231
    const-string v2, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2232
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 2240
    .end local v16           #editor2:Landroid/content/SharedPreferences$Editor;
    .end local v33           #sp2:Landroid/content/SharedPreferences;
    :cond_53
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_54

    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_54
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 2247
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 2248
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 2251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2247
    :cond_55
    const/4 v2, 0x0

    goto :goto_19

    .line 2248
    :cond_56
    const/4 v2, 0x0

    goto :goto_1a

    .line 2255
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_21
    const/16 v24, 0x1

    .line 2257
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2259
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_57

    .line 2260
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2264
    :cond_57
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2266
    .restart local v13       #data:[B
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->makeCSPtable([B)V

    .line 2268
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_0

    .line 2280
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_22
    const/16 v24, 0x1

    .line 2282
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2283
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2285
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_58

    .line 2286
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF IMSI_M"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sktImsiM:Ljava/lang/String;

    goto/16 :goto_0

    .line 2293
    :cond_58
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v21

    .line 2296
    .local v21, imsi_m:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sktImsiM:Ljava/lang/String;

    goto/16 :goto_0

    .line 2301
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v21           #imsi_m:Ljava/lang/String;
    :pswitch_23
    const/16 v24, 0x1

    .line 2303
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2304
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2306
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_59

    .line 2307
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[skt_irm]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sktIrm:Ljava/lang/String;

    goto/16 :goto_0

    .line 2314
    :cond_59
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v31

    .line 2317
    .local v31, skt_irm:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sktIrm:Ljava/lang/String;

    goto/16 :goto_0

    .line 2322
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v31           #skt_irm:Ljava/lang/String;
    :pswitch_24
    const/16 v24, 0x1

    .line 2324
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2325
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2327
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5a

    .line 2328
    const-string v2, "GSM"

    const-string v4, "getting EF_PERSO have exception !!!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_0

    .line 2332
    :cond_5a
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_PERSO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    .line 2334
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_0

    .line 2339
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_25
    const/16 v24, 0x1

    .line 2341
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2342
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2344
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5b

    .line 2345
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[sponImsi1]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2349
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    aput-object v5, v2, v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 2351
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-byte v6, v13, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v13, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v13, v6, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x22b

    array-length v7, v13

    add-int/lit8 v7, v7, -0x1

    invoke-static {v13, v6, v7}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    .line 2357
    :goto_1b
    :try_start_1c
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sponImsi1]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2352
    :catch_4
    move-exception v17

    .line 2353
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sponImsi1] Ex -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v2, v4

    goto :goto_1b

    .line 2361
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_26
    const/16 v24, 0x1

    .line 2363
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2364
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2366
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5c

    .line 2367
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[sponImsi2]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2371
    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    aput-object v5, v2, v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 2373
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-byte v6, v13, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v13, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v13, v6, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x22b

    array-length v7, v13

    add-int/lit8 v7, v7, -0x1

    invoke-static {v13, v6, v7}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0

    .line 2379
    :goto_1c
    :try_start_1e
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sponImsi2]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2374
    :catch_5
    move-exception v17

    .line 2375
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sponImsi2] Ex -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v2, v4

    goto :goto_1c

    .line 2383
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_27
    const/16 v24, 0x1

    .line 2385
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2386
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2388
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5d

    .line 2389
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[sponImsi3]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2393
    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    aput-object v5, v2, v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    .line 2395
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-byte v6, v13, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v13, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v13, v6, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x22b

    array-length v7, v13

    add-int/lit8 v7, v7, -0x1

    invoke-static {v13, v6, v7}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0

    .line 2401
    :goto_1d
    :try_start_20
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sponImsi3]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2396
    :catch_6
    move-exception v17

    .line 2397
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sponImsi3] Ex -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 2399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v2, v4

    goto :goto_1d

    .line 2406
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_28
    const/16 v24, 0x1

    .line 2408
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 2409
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2411
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5e

    .line 2412
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[roaming]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2416
    :cond_5e
    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v30

    .line 2417
    .local v30, roaming:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_5f

    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[roaming]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_5f
    const-string v2, "gsm.sim.roaming"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1826
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v30           #roaming:Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_60
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_11

    .line 1846
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_61
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1848
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1840
    :catch_7
    move-exception v14

    .line 1841
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1842
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1826
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #ar:Landroid/os/AsyncResult;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v13       #data:[B
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_62
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 1846
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1848
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1840
    :catch_8
    move-exception v14

    .line 1841
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1842
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1826
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_64
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b

    .line 1846
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_65
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1848
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1840
    :catch_9
    move-exception v14

    .line 1841
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1842
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1826
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_66
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 1846
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_67
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1848
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1840
    :catch_a
    move-exception v14

    .line 1841
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1842
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1826
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_68
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_f

    .line 1846
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_69
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1848
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1840
    :catch_b
    move-exception v14

    .line 1841
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1842
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_10

    .line 1432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_7
        :pswitch_6
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_16
        :pswitch_0
        :pswitch_1b
        :pswitch_17
        :pswitch_18
        :pswitch_1d
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_10
        :pswitch_1e
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public isAvailableVoiceMailInSIM()Z
    .locals 3

    .prologue
    .line 633
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMBDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isCphsMailboxEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3539
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3527
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3531
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2811
    const-string v3, "GSM"

    const-string v4, "SIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2817
    .local v1, operator:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2820
    const-string v3, "gsm.sim.operator.iso-country"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    :goto_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O2 paystate [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getO2payState()Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2829
    .local v2, sp_o2:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2830
    .local v0, editor_o2:Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_paystate"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getO2payState()Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->value()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2831
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2838
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2840
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "LOADED"

    invoke-virtual {v3, v4, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2851
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 2853
    :cond_0
    return-void

    .line 2823
    .end local v0           #editor_o2:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp_o2:Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "SIM"

    const-string v4, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 442
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 445
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 448
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 449
    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 450
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 451
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 453
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 454
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 455
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 456
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 457
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 460
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sktImsiM:Ljava/lang/String;

    .line 461
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sktIrm:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 466
    const-string v0, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 467
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 475
    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 3006
    const-string v0, "GSM"

    const-string/jumbo v1, "onReady "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    const-string v0, "GSM"

    const-string/jumbo v1, "onReady:broadcastIccStateChangedIntent "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const-string v0, "GSM"

    const-string/jumbo v1, "onReady:before fetchSimRecords() "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 3016
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2800
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2802
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2803
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2808
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2805
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 984
    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 990
    :cond_0
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 11
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"

    .prologue
    const/4 v10, 0x1

    .line 796
    if-eq p1, v10, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    if-eqz p2, :cond_2

    .line 799
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 800
    :cond_2
    if-eqz p3, :cond_3

    .line 801
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 806
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write cf icon voice value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write cf icon video value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 810
    .local v8, sp:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 811
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "cf_iconkey_voice"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 812
    const-string v0, "cf_iconkey_video"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 813
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_6

    .line 822
    if-eqz p2, :cond_4

    .line 823
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 830
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 831
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 841
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 846
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 847
    if-eqz p2, :cond_7

    .line 848
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 857
    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    array-length v0, v0

    if-le v0, v10, :cond_8

    .line 858
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xa0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 867
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 871
    :catch_0
    move-exception v7

    .line 872
    .local v7, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 826
    .end local v7           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 834
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2

    .line 852
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_3

    .line 862
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 14
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"
    .parameter "dialingNumber"

    .prologue
    .line 879
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    if-eqz p2, :cond_2

    .line 882
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 883
    :cond_2
    if-eqz p3, :cond_3

    .line 884
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 889
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write cf icon voice value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write cf icon video value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 893
    .local v12, sp:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 894
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cf_iconkey_voice"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 895
    const-string v1, "cf_iconkey_video"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v1, :cond_7

    .line 906
    if-eqz p2, :cond_4

    .line 907
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 908
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 914
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 915
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 916
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 925
    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 926
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_6

    .line 927
    const/4 v1, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 931
    :cond_6
    new-instance v9, Lcom/android/internal/telephony/AdnRecord;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v9, v1, v0}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .local v9, efCfisRecord:Lcom/android/internal/telephony/AdnRecord;
    const/16 v11, 0xe

    .line 936
    .local v11, recordSize:I
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v7

    .line 938
    .local v7, byteCfisRecord:[B
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v3, 0x2

    invoke-static {v7, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fcb

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/16 v13, 0x6fcb

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {p0, v6, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 945
    .end local v7           #byteCfisRecord:[B
    .end local v9           #efCfisRecord:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #recordSize:I
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v1, :cond_0

    .line 946
    if-eqz p2, :cond_8

    .line 947
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 956
    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 957
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 958
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 966
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f13

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v4, 0xe

    const/16 v5, 0x6f13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 970
    :catch_0
    move-exception v10

    .line 971
    .local v10, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 910
    .end local v10           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_1

    .line 918
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xef

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_2

    .line 951
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0x5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_3

    .line 961
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 607
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 608
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 610
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "xxxxxxx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 613
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 617
    return-void
.end method

.method public setSpnDynamic(Ljava/lang/String;)V
    .locals 11
    .parameter "currentPlmn"

    .prologue
    .line 2901
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2902
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 2905
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2907
    .local v5, simOper:Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2941
    :cond_0
    :goto_0
    return-void

    .line 2911
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2912
    .local v8, spnOverrideString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2913
    .local v6, spnDisplayRule:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2915
    .local v3, onlyOn:[Ljava/lang/String;
    if-nez v8, :cond_2

    if-ltz v6, :cond_0

    .line 2919
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2921
    .local v7, spnForCurrentLocale:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 2922
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2923
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 2930
    :cond_3
    if-eqz p1, :cond_0

    .line 2934
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 2935
    .local v4, p:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2936
    :cond_4
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2937
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 2934
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 788
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 789
    return-void
.end method

.method public setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 792
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 780
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 781
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 784
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 666
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 667
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 669
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 699
    :goto_0
    return-void

    .line 673
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 674
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 676
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-eqz v0, :cond_1

    .line 680
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 693
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 695
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 697
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 714
    if-eq p1, v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    if-gez p2, :cond_4

    .line 721
    const/4 p2, -0x1

    .line 728
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 742
    if-gez p2, :cond_6

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 750
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 755
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v0, :cond_7

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v6

    .line 765
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 722
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 725
    const/16 p2, 0xff

    goto :goto_1

    :cond_5
    move v0, v1

    .line 737
    goto :goto_2

    .line 747
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 757
    :cond_7
    const/16 v0, 0xa

    goto :goto_4
.end method

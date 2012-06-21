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

.field private static final EVENT_GET_ROAMING_DONE:I = 0x32

.field private static final EVENT_GET_SMSC_DONE:I = 0x28

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x22

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x23

.field private static final EVENT_GET_SPONIMSI1_DONE:I = 0x2f

.field private static final EVENT_GET_SPONIMSI2_DONE:I = 0x30

.field private static final EVENT_GET_SPONIMSI3_DONE:I = 0x31

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CSP_DONE:I = 0x25

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_LOCKED_OR_ABSENT:I = 0x29

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_DEVICE_READY:I = 0x27

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

    .line 107
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    .line 324
    const/16 v0, 0x6b

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

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 107
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 121
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 122
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 125
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 126
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    .line 137
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .line 138
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 153
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 154
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 156
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 157
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 158
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 159
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 164
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 166
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 170
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 172
    new-instance v3, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    .line 191
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    .line 193
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    .line 196
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 197
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 199
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 200
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    .line 201
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    .line 202
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    .line 203
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    .line 204
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    .line 205
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 206
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    .line 207
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    .line 208
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    .line 209
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    .line 210
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    .line 211
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 346
    new-instance v3, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 348
    new-instance v3, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 350
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 353
    iput v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 355
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1f

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x29

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    .local v2, voiceMailIntentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, IccCardStatusIntentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x27

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 391
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastCbSettingsAvailable()V
    .locals 3

    .prologue
    .line 3519
    const-string v1, "GSM"

    const-string v2, "[CB] broadcastCbSettingsAvailable method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3521
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3522
    return-void
.end method

.method private checkCFISavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1366
    const-string v1, "GSM"

    const-string v2, "Enter checkCFIS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1372
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(CFIS) : "

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

    .line 1373
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(CFIS) : "

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

    .line 1375
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

    .line 1394
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableCFIS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_1
    return-void

    .line 1378
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->CFI_STATUS:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    goto :goto_1

    .line 1385
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

    .line 1112
    const-string v1, "GSM"

    const-string v2, "Enter  checkCHV1available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(CHV1) : "

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

    .line 1121
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(CHV1) : "

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

    .line 1122
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

    .line 1141
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableCHV1 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :goto_1
    return-void

    .line 1126
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    const-string v1, "GSM"

    const-string v2, "3G - CHV1 available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    goto :goto_1

    .line 1132
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

    .line 1036
    const-string v1, "GSM"

    const-string v2, "Enter checkEONS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1045
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(PNN) : "

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

    .line 1046
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(PNN) : "

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

    .line 1047
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

    .line 1050
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(OPL) : "

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

    .line 1051
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(OPL) : "

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

    .line 1052
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

    .line 1073
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabledPNN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabledOPL is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :goto_1
    return-void

    .line 1055
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->PLMN_NETWORK_NAME:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 1059
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->OPERATOR_PLMN_LIST:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 1069
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    goto :goto_1

    .line 1063
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
    .line 1078
    const-string v1, "GSM"

    const-string v2, "Enter  checkFDNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1086
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(FDN) : "

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

    .line 1087
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(FDN) : "

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

    .line 1088
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

    .line 1107
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableFDN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :goto_1
    return-void

    .line 1091
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    goto :goto_1

    .line 1098
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
    .locals 7
    .parameter "table"

    .prologue
    const/4 v6, 0x1

    .line 1291
    const-string v2, "GSM"

    const-string v3, "Enter  checkMBDNavailable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :try_start_0
    const-string v2, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v2, :cond_0

    .line 1297
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSSTActive(MBDN) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSSTAvaiable(MBDN) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :cond_0
    :goto_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAvailableMBDN is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-ne v2, v6, :cond_3

    .line 1321
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1322
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 1323
    .local v1, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v2, 0x6fc9

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1331
    .end local v1           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :goto_1
    return-void

    .line 1303
    :cond_1
    :try_start_1
    const-string v2, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1305
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->MBDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "GSM"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto :goto_0

    .line 1310
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v2, "GSM"

    const-string v3, "ICCType is Unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1325
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1326
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f17

    const/16 v4, 0x6f4a

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_1
.end method

.method private checkMSISDNavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x1

    .line 1180
    const-string v1, "GSM"

    const-string v2, "Enter  checkMSISDNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1188
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(MSISDN) : "

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

    .line 1189
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(MSISDN) : "

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

    .line 1191
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

    .line 1210
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    if-ne v1, v5, :cond_1

    .line 1211
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

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

    .line 1213
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1216
    :cond_1
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableMSISDN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_2
    return-void

    .line 1194
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1196
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->MSISDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    goto :goto_2

    .line 1201
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1211
    :cond_4
    const/16 v1, 0x6f4e

    goto :goto_1
.end method

.method private checkMWISavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    .line 1334
    const-string v1, "GSM"

    const-string v2, "Enter checkMWIS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1339
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1340
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(MWIS) : "

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

    .line 1341
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(MWIS) : "

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

    .line 1343
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

    .line 1362
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableMWIS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_1
    return-void

    .line 1346
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1348
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    goto :goto_1

    .line 1353
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
    .line 1221
    const-string v1, "GSM"

    const-string v2, "Enter  checkSMSPavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1230
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(SMSP) : "

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

    .line 1231
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(SMSP) : "

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

    .line 1232
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

    .line 1251
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableSMSP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :goto_1
    return-void

    .line 1235
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    goto :goto_1

    .line 1242
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
    .line 1255
    const-string v1, "GSM"

    const-string v2, "Enter  checkSMSavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1263
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(SMS) : "

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

    .line 1264
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(SMS) : "

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

    .line 1266
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

    .line 1285
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableSMS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :goto_1
    return-void

    .line 1269
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1271
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    goto :goto_1

    .line 1276
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
    .line 1146
    const-string v1, "GSM"

    const-string v2, "Enter  checkSPNavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1154
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTActive(SPN) : "

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

    .line 1155
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSSTAvaiable(SPN) : "

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

    .line 1156
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

    .line 1175
    :cond_0
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableSPN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :goto_1
    return-void

    .line 1159
    :cond_1
    :try_start_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->SPN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    goto :goto_1

    .line 1166
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
    .line 2389
    const-string v4, "GSM"

    const-string v5, "checkSimChanged enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2395
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2396
    const-string/jumbo v4, "key_iccid"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 2399
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 2401
    .local v2, old:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2402
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2404
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "key_iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2408
    const-string/jumbo v4, "ril.isIccChanged"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 2412
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

    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 2416
    .local v1, isSimChanged:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 2417
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2419
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "key_iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2422
    const-string/jumbo v4, "ril.isIccChanged"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2414
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isSimChanged:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2424
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
    .line 1022
    const-string v0, "GSM"

    const-string v1, "findTheEnabledServiceInSST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
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

    .line 1025
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

    .line 1026
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 1027
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

    .line 1029
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1030
    const/4 v0, 0x1

    .line 1032
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
    .line 2796
    if-nez p1, :cond_0

    .line 2797
    const/4 v10, 0x0

    .line 2824
    :goto_0
    return-object v10

    .line 2803
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2804
    .local v2, curLoc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 2805
    .local v5, l:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 2807
    .local v1, c:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2808
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

    .line 2809
    .local v8, so:Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2811
    .local v7, s:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2813
    const/4 v10, 0x0

    aget-object v10, v7, v10

    goto :goto_0

    .line 2816
    :cond_1
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2817
    .local v3, entryLoc:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2818
    array-length v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2819
    :cond_2
    const/4 v10, 0x1

    aget-object v10, v7, v10

    goto :goto_0

    .line 2808
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2824
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

    .line 3278
    if-eqz p1, :cond_0

    .line 3279
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3282
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3352
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3354
    :goto_0
    return-void

    .line 3284
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 3286
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f46

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3288
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3290
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3293
    :pswitch_1
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 3294
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3295
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 3296
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 3298
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

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

    .line 3300
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3309
    .end local v0           #data:[B
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f14

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3311
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3306
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto :goto_1

    .line 3314
    :pswitch_2
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 3315
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3316
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3318
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3320
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_3

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

    .line 3321
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3325
    .end local v0           #data:[B
    :cond_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3327
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3329
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3331
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3335
    :pswitch_3
    if-eqz p2, :cond_7

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 3336
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3337
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3340
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3342
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_5

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

    .line 3343
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    .end local v0           #data:[B
    :cond_6
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3345
    :cond_7
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 3346
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 3476
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 3478
    .local v1, usedCspGroups:I
    const/16 v2, -0x40

    .line 3480
    .local v2, valueAddedServicesGroup:B
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3482
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 3483
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 3489
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3501
    :goto_1
    return-void

    .line 3491
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3494
    const-string v3, "GSM"

    const-string v4, "[CSP] Set Automatic Network Selection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3481
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3500
    :cond_2
    const-string v3, "GSM"

    const-string v4, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 2432
    sparse-switch p1, :sswitch_data_0

    .line 2456
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2457
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2467
    :goto_0
    return-void

    .line 2434
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2435
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2439
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2440
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2444
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2445
    const-string v0, "GSM"

    const-string v1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2432
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleFileUpdateExt(I)V
    .locals 7
    .parameter "efid"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3092
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 3093
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    .line 3094
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 3096
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords:HandleFileUpdateEXT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const/16 v2, 0x2fe2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3099
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3101
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 3103
    sparse-switch p1, :sswitch_data_0

    .line 3178
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "810301010382028281830100"

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 3179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 3182
    :goto_0
    return-void

    .line 3107
    :sswitch_0
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f40

    const-string v2, "1"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x6f4a

    :goto_1
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 3109
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.PB_SYNC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3111
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3107
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/16 v2, 0x6f4e

    goto :goto_1

    .line 3116
    :sswitch_1
    const/16 v2, 0x6fc9

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3117
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0

    .line 3121
    :sswitch_2
    const/16 v2, 0x6fad

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3122
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0

    .line 3127
    :sswitch_3
    const/16 v2, 0x6fca

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3128
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0

    .line 3134
    :sswitch_4
    const/16 v2, 0x6fcb

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3135
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3136
    const/16 v2, 0x6f13

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3137
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3143
    :sswitch_5
    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3147
    :sswitch_6
    const/16 v2, 0x6fcd

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3148
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3153
    :sswitch_7
    const/16 v2, 0x6fc6

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3155
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3156
    const/16 v2, 0x6fc5

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3158
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3162
    :sswitch_8
    const/16 v2, 0x6f38

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3163
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3168
    :sswitch_9
    const/16 v2, 0x6f16

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3169
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3173
    :sswitch_a
    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3174
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 3103
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

    .line 2673
    const-string v2, "ffffffffffffffff"

    .line 2675
    .local v2, fdata:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2677
    .local v0, count:I
    iput v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    .line 2679
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    .line 2680
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    .line 2681
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    .line 2682
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    .line 2685
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2687
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 2689
    .local v1, data:[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2692
    .local v4, sdata:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2693
    const-string v5, "GSM"

    const-string v6, "[handleOPL] EF_OPL contains Null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 2696
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v8, v5, v3

    .line 2697
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v8, v5, v3

    .line 2698
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v8, v5, v3

    .line 2714
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

    .line 2715
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

    .line 2716
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

    .line 2717
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

    .line 2719
    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    .line 2721
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    .line 2685
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2700
    :cond_0
    const-string v5, "GSM"

    const-string v6, "[handleOPL] EF_OPL contains Data(Not Null)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 2703
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 2704
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 2705
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 2706
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_1

    .line 2708
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v8, v5, v3

    .line 2709
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v8, v5, v3

    .line 2710
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v8, v5, v3

    goto/16 :goto_1

    .line 2725
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

    .line 2636
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2638
    .local v0, count:I
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    .line 2640
    const-string v2, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    .line 2642
    .local v2, fdata:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2643
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 2645
    .local v1, data:[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2647
    .local v4, sdata:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2648
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v6, v1

    invoke-direct {v5, v1, v9, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2650
    .local v5, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2651
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_0

    .line 2652
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2653
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 2661
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

    .line 2663
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .line 2642
    .end local v5           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2655
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

    .line 2666
    .end local v5           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    const-string v6, "GSM"

    const-string v7, "[handlePNNs] data is  Null!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2670
    .end local v1           #data:[B
    .end local v4           #sdata:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private handleSimRefresh([I)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 2470
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .line 2471
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2510
    :cond_1
    :goto_0
    return-void

    .line 2475
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 2477
    const/4 v1, 0x0

    aget v1, p1, v1

    packed-switch v1, :pswitch_data_0

    .line 2507
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2479
    :pswitch_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2481
    :cond_3
    aget v0, p1, v2

    .line 2482
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 2485
    .end local v0           #efid:I
    :pswitch_1
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2487
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2488
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    .line 2491
    :pswitch_2
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2503
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 2477
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
    .line 2578
    const-wide/16 v2, 0x0

    .line 2579
    .local v2, imsi_s1:J
    const-wide/16 v4, 0x0

    .line 2583
    .local v4, imsi_s2:J
    const/16 v9, 0xa

    new-array v6, v9, [C

    fill-array-data v6, :array_0

    .line 2585
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

    .line 2586
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

    .line 2588
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_0

    .line 2589
    const-string v0, "0000000"

    .line 2607
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

    .line 2609
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2610
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

    .line 2611
    const-wide/16 v9, 0x64

    rem-long/2addr v4, v9

    .line 2612
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

    .line 2613
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

    .line 2615
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

    .line 2617
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-eq v9, v10, :cond_2

    .line 2618
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

    .line 2620
    :goto_1
    return-object v9

    .line 2591
    .end local v0           #Min1:Ljava/lang/String;
    .end local v1           #Min2:Ljava/lang/String;
    :cond_0
    const/16 v9, 0xe

    ushr-long v7, v2, v9

    .line 2592
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

    .line 2593
    .restart local v0       #Min1:Ljava/lang/String;
    const-wide/16 v9, 0x64

    rem-long/2addr v7, v9

    .line 2594
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

    .line 2595
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

    .line 2596
    const-wide/16 v9, 0x3fff

    and-long/2addr v2, v9

    .line 2598
    const/16 v9, 0xa

    ushr-long v9, v2, v9

    const-wide/16 v11, 0xf

    and-long v7, v9, v11

    .line 2599
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

    .line 2600
    const-wide/16 v9, 0x3ff

    and-long v7, v2, v9

    .line 2601
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

    .line 2602
    const-wide/16 v9, 0x64

    rem-long/2addr v7, v9

    .line 2603
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

    .line 2604
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

    .line 2620
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

    .line 2583
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

    .line 2522
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 2523
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

    .line 2527
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2528
    array-length v1, p1

    .line 2532
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2533
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2534
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2536
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2538
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmsServiceCenter(Ljava/lang/String;)V
    .locals 1
    .parameter "smsc"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    .line 2633
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2541
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2543
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2544
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2546
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2547
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

    .line 2552
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2553
    array-length v4, v0

    .line 2557
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2558
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2559
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 2561
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2566
    aput-byte v10, v0, v9

    .line 2543
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2574
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsCSPEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3508
    const-string v2, "GSM"

    const-string v3, "SIMRecords: isCphsCSPEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3511
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

    .line 3401
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3402
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

    .line 3236
    if-nez p1, :cond_1

    .line 3249
    :cond_0
    :goto_0
    return v2

    .line 3238
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 3239
    goto :goto_0

    .line 3242
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3243
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

    .line 3244
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 3245
    goto :goto_0
.end method

.method private makeCSPtable([B)V
    .locals 2
    .parameter "table"

    .prologue
    .line 3458
    const-string v0, "GSM"

    const-string v1, "Enter  makeCSPtable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    new-instance v0, Lcom/android/internal/telephony/gsm/simCSPtable;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    .line 3460
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 3363
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3365
    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 3367
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3369
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 3370
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

    .line 3373
    .end local v4           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    .line 3374
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 3379
    :cond_1
    if-nez v2, :cond_4

    .line 3395
    :cond_2
    return-void

    .line 3367
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 3383
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 3385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 3387
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3390
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 3391
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

    .line 3392
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3385
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 2
    .parameter "carrier"

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2792
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 3
    .parameter "nwkName"

    .prologue
    .line 2900
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

    .line 2901
    if-nez p1, :cond_1

    .line 2930
    :cond_0
    :goto_0
    return-void

    .line 2905
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    if-nez v0, :cond_2

    .line 2906
    const-string v0, "GSM"

    const-string/jumbo v1, "setVoiceMailByCountry() is called before making mVmConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2910
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2912
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2914
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2916
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

    .line 2925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 2928
    :cond_3
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceMailByCountry: isVoiceMailFixed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

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
    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsDisposed:Z

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsDeviceReady(Landroid/os/Handler;)V

    .line 441
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2949
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 2950
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2952
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "GSM"

    const-string v2, "fetchSimRecords:before SystemProperties.get() "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    .line 2957
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2960
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2962
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2963
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2991
    const/16 v1, 0x6f3e

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2992
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2996
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 2998
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3001
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3002
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3004
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3005
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3007
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3008
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3011
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3012
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3019
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3022
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3026
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3027
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3028
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3029
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3032
    const/4 v1, 0x0

    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 3034
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3035
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3037
    const/16 v1, 0x6fc6

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3039
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3041
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3043
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3046
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableOnsDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3047
    const-string v1, "Try to read ONS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3048
    const/16 v1, 0x6f14

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3050
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3053
    :cond_0
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3054
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3056
    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3057
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3077
    const/16 v1, 0x6f02

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3078
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3080
    const-string v1, "GSM"

    const-string v2, "[Voicemail] create VoiceMailcontacts after sim loading."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    if-nez v1, :cond_1

    .line 3082
    new-instance v1, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 3085
    :goto_0
    return-void

    .line 3084
    :cond_1
    const-string v1, "GSM"

    const-string v2, "[Voicemail] mVmConfig is not null. it is already exist."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 444
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 446
    return-void
.end method

.method public getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "MCCMNC"
    .parameter "LAC"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, EonsName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, operatorNumeric:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 510
    const-string v7, "MCCMNC is null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 563
    :goto_0
    return-object v6

    .line 514
    :cond_0
    if-nez v5, :cond_1

    .line 515
    const-string v7, "SIMOperatorNumeric is null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 519
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

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    :cond_2
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 526
    .local v4, isVPLMN:Z
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    if-eqz v6, :cond_5

    .line 527
    if-nez v4, :cond_8

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-nez v6, :cond_8

    .line 528
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v0, v6, v7

    .line 545
    :cond_5
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    if-eqz v6, :cond_6

    if-nez v0, :cond_6

    .line 546
    if-nez v4, :cond_a

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 553
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7

    .line 555
    const/4 v0, 0x0

    .end local v4           #isVPLMN:Z
    :cond_7
    :goto_3
    move-object v6, v0

    .line 563
    goto :goto_0

    .line 529
    .restart local v4       #isVPLMN:Z
    :cond_8
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-eqz v6, :cond_5

    .line 530
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    if-ge v3, v6, :cond_5

    .line 531
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_9

    .line 532
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

    .line 534
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

    .line 535
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v3

    if-eqz v6, :cond_5

    .line 536
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v7, v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v0, v6, v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 530
    .end local v2           #expr:Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 549
    .end local v3           #i:I
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 558
    .end local v4           #isVPLMN:Z
    :catch_0
    move-exception v1

    .line 559
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "GSM"

    const-string v7, "Got exception while searching for EONS name, falling back to null"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 3197
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    if-lez v1, :cond_1

    .line 3198
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 3219
    .local v0, rule:I
    :cond_0
    :goto_0
    return v0

    .line 3199
    .end local v0           #rule:I
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    if-nez v1, :cond_2

    .line 3200
    const-string v1, "GSM"

    const-string v2, "[getDisplayRule] SPN service disabled (EF_UST)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    const/4 v0, 0x2

    .restart local v0       #rule:I
    goto :goto_0

    .line 3202
    .end local v0           #rule:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 3203
    :cond_3
    const-string v1, "GSM"

    const-string v2, "[getDisplayRule] showing plmn only"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    const/4 v0, 0x2

    .restart local v0       #rule:I
    goto :goto_0

    .line 3206
    .end local v0           #rule:I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3207
    const/4 v0, 0x1

    .line 3208
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3210
    :cond_5
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3213
    .end local v0           #rule:I
    :cond_6
    const/4 v0, 0x2

    .line 3214
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 3216
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 2875
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2876
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

    .line 2878
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

    .line 2879
    const-string v1, "GSM"

    const-string v2, "getFakeHomeOn() Check only MCC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2885
    :goto_0
    return-object v1

    .line 2881
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2882
    const-string v1, "GSM"

    const-string v2, "getFakeHomeOn() Check MCC MNC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2885
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2891
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2892
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
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2payState()Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3409
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3410
    .local v2, simState:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3411
    .local v1, simOper:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->NOT_READY:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    .line 3413
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

    .line 3414
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

    .line 3416
    const-string v3, "23410"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3417
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    if-ne v3, v5, :cond_2

    .line 3418
    const-string/jumbo v3, "isAvailableO2PERSO is true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3419
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    if-nez v3, :cond_0

    .line 3420
    const-string v3, "It should not enter here!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3437
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

    .line 3438
    return-object v0

    .line 3421
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 3422
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3424
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3427
    :cond_2
    const-string/jumbo v3, "isAvailableO2PERSO is false. Check FDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3428
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    if-ne v3, v5, :cond_3

    .line 3429
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3431
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    goto :goto_0

    .line 3435
    :cond_4
    const-string v3, "SIM state is not READY or SIM card is not O2 SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 982
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 983
    const-string v3, "GSM"

    const-string v4, "getOperatorNumeric: IMSI == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_0
    return-object v2

    .line 986
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-nez v3, :cond_2

    .line 987
    :cond_1
    const-string v3, "GSM"

    const-string v4, "getSIMOperatorNumeric: bad mncLength"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_4

    .line 995
    const/16 v2, 0x7e

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "405805"

    aput-object v2, v0, v5

    const/4 v2, 0x1

    const-string v3, "405799"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "405025"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "405026"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "405027"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "405028"

    aput-object v3, v0, v2

    const-string v2, "405029"

    aput-object v2, v0, v6

    const/4 v2, 0x7

    const-string v3, "405030"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "405031"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "405032"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "405033"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "405034"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "405035"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "405036"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "405037"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "405038"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "405039"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "405040"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "405041"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "405042"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "405043"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "405044"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "405045"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "405046"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "405047"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "405800"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "405802"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "405803"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "405807"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "405804"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "405809"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "405852"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "405853"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "405846"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "405848"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "405849"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "405812"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "405806"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "405750"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "405751"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "405752"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "405753"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "405754"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "405755"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "405756"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "405808"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "405810"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "405811"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "405813"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "405814"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "405815"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "405816"

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const-string v3, "405817"

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const-string v3, "405801"

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const-string v3, "405820"

    aput-object v3, v0, v2

    const/16 v2, 0x37

    const-string v3, "405819"

    aput-object v3, v0, v2

    const/16 v2, 0x38

    const-string v3, "405821"

    aput-object v3, v0, v2

    const/16 v2, 0x39

    const-string v3, "405925"

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    const-string v3, "405875"

    aput-object v3, v0, v2

    const/16 v2, 0x3b

    const-string v3, "405876"

    aput-object v3, v0, v2

    const/16 v2, 0x3c

    const-string v3, "405877"

    aput-object v3, v0, v2

    const/16 v2, 0x3d

    const-string v3, "405879"

    aput-object v3, v0, v2

    const/16 v2, 0x3e

    const-string v3, "405818"

    aput-object v3, v0, v2

    const/16 v2, 0x3f

    const-string v3, "405878"

    aput-object v3, v0, v2

    const/16 v2, 0x40

    const-string v3, "405927"

    aput-object v3, v0, v2

    const/16 v2, 0x41

    const-string v3, "405928"

    aput-object v3, v0, v2

    const/16 v2, 0x42

    const-string v3, "405929"

    aput-object v3, v0, v2

    const/16 v2, 0x43

    const-string v3, "405926"

    aput-object v3, v0, v2

    const/16 v2, 0x44

    const-string v3, "405932"

    aput-object v3, v0, v2

    const/16 v2, 0x45

    const-string v3, "405850"

    aput-object v3, v0, v2

    const/16 v2, 0x46

    const-string v3, "405823"

    aput-object v3, v0, v2

    const/16 v2, 0x47

    const-string v3, "405824"

    aput-object v3, v0, v2

    const/16 v2, 0x48

    const-string v3, "405825"

    aput-object v3, v0, v2

    const/16 v2, 0x49

    const-string v3, "405826"

    aput-object v3, v0, v2

    const/16 v2, 0x4a

    const-string v3, "405827"

    aput-object v3, v0, v2

    const/16 v2, 0x4b

    const-string v3, "405828"

    aput-object v3, v0, v2

    const/16 v2, 0x4c

    const-string v3, "405829"

    aput-object v3, v0, v2

    const/16 v2, 0x4d

    const-string v3, "405830"

    aput-object v3, v0, v2

    const/16 v2, 0x4e

    const-string v3, "405831"

    aput-object v3, v0, v2

    const/16 v2, 0x4f

    const-string v3, "405832"

    aput-object v3, v0, v2

    const/16 v2, 0x50

    const-string v3, "405833"

    aput-object v3, v0, v2

    const/16 v2, 0x51

    const-string v3, "405834"

    aput-object v3, v0, v2

    const/16 v2, 0x52

    const-string v3, "405835"

    aput-object v3, v0, v2

    const/16 v2, 0x53

    const-string v3, "405836"

    aput-object v3, v0, v2

    const/16 v2, 0x54

    const-string v3, "405837"

    aput-object v3, v0, v2

    const/16 v2, 0x55

    const-string v3, "405838"

    aput-object v3, v0, v2

    const/16 v2, 0x56

    const-string v3, "405839"

    aput-object v3, v0, v2

    const/16 v2, 0x57

    const-string v3, "405840"

    aput-object v3, v0, v2

    const/16 v2, 0x58

    const-string v3, "405841"

    aput-object v3, v0, v2

    const/16 v2, 0x59

    const-string v3, "405842"

    aput-object v3, v0, v2

    const/16 v2, 0x5a

    const-string v3, "405843"

    aput-object v3, v0, v2

    const/16 v2, 0x5b

    const-string v3, "405844"

    aput-object v3, v0, v2

    const/16 v2, 0x5c

    const-string v3, "405845"

    aput-object v3, v0, v2

    const/16 v2, 0x5d

    const-string v3, "405847"

    aput-object v3, v0, v2

    const/16 v2, 0x5e

    const-string v3, "405851"

    aput-object v3, v0, v2

    const/16 v2, 0x5f

    const-string v3, "405822"

    aput-object v3, v0, v2

    const/16 v2, 0x60

    const-string v3, "405880"

    aput-object v3, v0, v2

    const/16 v2, 0x61

    const-string v3, "405881"

    aput-object v3, v0, v2

    const/16 v2, 0x62

    const-string v3, "405882"

    aput-object v3, v0, v2

    const/16 v2, 0x63

    const-string v3, "405883"

    aput-object v3, v0, v2

    const/16 v2, 0x64

    const-string v3, "405884"

    aput-object v3, v0, v2

    const/16 v2, 0x65

    const-string v3, "405885"

    aput-object v3, v0, v2

    const/16 v2, 0x66

    const-string v3, "405886"

    aput-object v3, v0, v2

    const/16 v2, 0x67

    const-string v3, "405908"

    aput-object v3, v0, v2

    const/16 v2, 0x68

    const-string v3, "405909"

    aput-object v3, v0, v2

    const/16 v2, 0x69

    const-string v3, "405910"

    aput-object v3, v0, v2

    const/16 v2, 0x6a

    const-string v3, "405911"

    aput-object v3, v0, v2

    const/16 v2, 0x6b

    const-string v3, "405812"

    aput-object v3, v0, v2

    const/16 v2, 0x6c

    const-string v3, "405802"

    aput-object v3, v0, v2

    const/16 v2, 0x6d

    const-string v3, "405807"

    aput-object v3, v0, v2

    const/16 v2, 0x6e

    const-string v3, "405806"

    aput-object v3, v0, v2

    const/16 v2, 0x6f

    const-string v3, "405912"

    aput-object v3, v0, v2

    const/16 v2, 0x70

    const-string v3, "405913"

    aput-object v3, v0, v2

    const/16 v2, 0x71

    const-string v3, "405914"

    aput-object v3, v0, v2

    const/16 v2, 0x72

    const-string v3, "405915"

    aput-object v3, v0, v2

    const/16 v2, 0x73

    const-string v3, "405916"

    aput-object v3, v0, v2

    const/16 v2, 0x74

    const-string v3, "405917"

    aput-object v3, v0, v2

    const/16 v2, 0x75

    const-string v3, "405918"

    aput-object v3, v0, v2

    const/16 v2, 0x76

    const-string v3, "405919"

    aput-object v3, v0, v2

    const/16 v2, 0x77

    const-string v3, "405920"

    aput-object v3, v0, v2

    const/16 v2, 0x78

    const-string v3, "405921"

    aput-object v3, v0, v2

    const/16 v2, 0x79

    const-string v3, "405922"

    aput-object v3, v0, v2

    const/16 v2, 0x7a

    const-string v3, "405923"

    aput-object v3, v0, v2

    const/16 v2, 0x7b

    const-string v3, "405924"

    aput-object v3, v0, v2

    const/16 v2, 0x7c

    const-string v3, "405930"

    aput-object v3, v0, v2

    const/16 v2, 0x7d

    const-string v3, "405931"

    aput-object v3, v0, v2

    .line 1006
    .local v0, IndExceptMccMnc:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 1008
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1010
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1006
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1018
    .end local v0           #IndExceptMccMnc:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 3228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3527
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
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method

.method public getVideoCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getisVoiceMailFixed()Z
    .locals 3

    .prologue
    .line 613
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVoiceMailFixed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    .line 1405
    const/16 v24, 0x0

    .line 1414
    .local v24, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2370
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2378
    :cond_0
    :goto_0
    if-eqz v24, :cond_1

    .line 2379
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2382
    :cond_1
    return-void

    .line 1417
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v10

    .line 1418
    .local v10, Fh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v2, 0x2fe2

    const/16 v4, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2373
    .end local v10           #Fh:Lcom/android/internal/telephony/IccFileHandler;
    :catch_0
    move-exception v18

    .line 2375
    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "GSM"

    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2378
    if-eqz v24, :cond_1

    goto :goto_1

    .line 1423
    .end local v18           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2378
    :catchall_0
    move-exception v2

    if-eqz v24, :cond_2

    .line 2379
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2378
    :cond_2
    throw v2

    .line 1427
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1429
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastCbSettingsAvailable()V

    goto :goto_0

    .line 1435
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1437
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1440
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmsServiceCenter(Ljava/lang/String;)V

    goto :goto_0

    .line 1445
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 1450
    :pswitch_6
    const/16 v24, 0x1

    .line 1452
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1454
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1455
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1459
    :cond_3
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1463
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

    .line 1464
    :cond_4
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1469
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

    .line 1474
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

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

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1477
    .local v28, mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    aget-object v27, v12, v20

    .line 1478
    .local v27, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1479
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1485
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v2, :cond_8

    .line 1489
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1490
    .local v26, mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1500
    .end local v26           #mcc:I
    :cond_8
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1504
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 1512
    .local v32, sp:Landroid/content/SharedPreferences;
    const-string v2, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1514
    .local v9, CF_Imsi:Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1515
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cf_imsikey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1516
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1520
    if-eqz v9, :cond_c

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1524
    const-string v2, "cf_iconkey_voice"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1525
    const-string v2, "cf_iconkey_video"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    goto/16 :goto_0

    .line 1470
    .end local v9           #CF_Imsi:Ljava/lang/String;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v32           #sp:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v14

    .line 1471
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

    .line 1477
    .end local v14           #e:Ljava/lang/NullPointerException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1491
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 1492
    .restart local v14       #e:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1493
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

    .line 1494
    .end local v14           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v14

    .line 1495
    .local v14, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1496
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

    .line 1528
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #CF_Imsi:Ljava/lang/String;
    .restart local v15       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v32       #sp:Landroid/content/SharedPreferences;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1530
    const-string v2, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1531
    const-string v2, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1532
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1535
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1536
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1537
    const-string v2, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1538
    const-string v2, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1539
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1546
    .end local v9           #CF_Imsi:Ljava/lang/String;
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v32           #sp:Landroid/content/SharedPreferences;
    :pswitch_7
    const/16 v24, 0x1

    .line 1548
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1549
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1551
    .local v13, data:[B
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1552
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 1554
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

    .line 1558
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1561
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_e

    .line 1562
    const-string v2, "GSM"

    const-string v4, "Got valid mailbox number for MBDN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1573
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 1564
    :cond_e
    const-string v2, "GSM"

    const-string v4, "Got invalid mailbox number for MBDN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto/16 :goto_0

    .line 1578
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_8
    const/16 v24, 0x1

    .line 1580
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1582
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    .line 1584
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

    .line 1590
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 1594
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 1595
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1596
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1584
    :cond_f
    const-string v2, "[MBDN]"

    goto :goto_5

    .line 1603
    :cond_10
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1605
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
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

    if-ne v2, v6, :cond_11

    const-string v2, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_12

    .line 1612
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1613
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1605
    :cond_11
    const-string v2, " EF[MBDN]"

    goto :goto_6

    .line 1619
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_DisableEditingVMNumber"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1621
    const-string v2, "GSM"

    const-string v4, "Voicemail number is fixed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 1624
    :cond_13
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1625
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 1629
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const/16 v24, 0x1

    .line 1631
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1633
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_14

    .line 1634
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1638
    :cond_14
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1640
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1641
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1643
    const-string v2, "GSM"

    const-string v4, "MSISDN: xxxxxxx"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1647
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const/16 v24, 0x0

    .line 1648
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1650
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1651
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1653
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1658
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    const/16 v24, 0x1

    .line 1660
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1661
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1663
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1667
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

    .line 1670
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1672
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_15

    .line 1673
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1678
    :cond_15
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    const/16 v34, 0x1

    .line 1679
    .local v34, voiceMailWaiting:Z
    :goto_7
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 1678
    .end local v34           #voiceMailWaiting:Z
    :cond_16
    const/16 v34, 0x0

    goto :goto_7

    .line 1693
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_c
    const/16 v24, 0x1

    .line 1695
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1696
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1698
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1702
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    if-nez v2, :cond_0

    .line 1708
    :cond_17
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v23, v2, 0xf

    .line 1711
    .local v23, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v23

    if-ne v0, v2, :cond_19

    .line 1713
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1718
    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 1714
    :cond_19
    const/4 v2, 0x5

    move/from16 v0, v23

    if-ne v0, v2, :cond_18

    .line 1715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto :goto_8

    .line 1723
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v23           #indicator:I
    :pswitch_d
    const/16 v24, 0x1

    .line 1728
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1729
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1731
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1735
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1737
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1740
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSimChanged()V

    goto/16 :goto_0

    .line 1749
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_f
    const/16 v24, 0x1

    .line 1751
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1752
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1753
    .restart local v13       #data:[B
    const-string v19, ""

    .line 1755
    .local v19, gid1:Ljava/lang/String;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    .line 1756
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v19

    .line 1760
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 1761
    .restart local v32       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1762
    .restart local v15       #editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_gid1"

    move-object/from16 v0, v19

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1763
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1765
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

    .line 1770
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v19           #gid1:Ljava/lang/String;
    .end local v32           #sp:Landroid/content/SharedPreferences;
    :pswitch_10
    const/16 v24, 0x1

    .line 1772
    :try_start_9
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1773
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1775
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_1f

    .line 1798
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1c

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1801
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_1c

    aget-object v27, v12, v20

    .line 1802
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1803
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1809
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1e

    .line 1810
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v2, :cond_59

    .line 1812
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1814
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 1826
    .end local v26           #mcc:I
    :cond_1e
    :goto_a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1779
    :cond_1f
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

    .line 1782
    array-length v2, v13

    const/4 v4, 0x3

    if-ge v2, v4, :cond_24

    .line 1783
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1798
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_21

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1801
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_b
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    aget-object v27, v12, v20

    .line 1802
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1803
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1809
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_23

    .line 1810
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v2, :cond_5b

    .line 1812
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1814
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .line 1826
    .end local v26           #mcc:I
    :cond_23
    :goto_c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 1787
    :cond_24
    :try_start_11
    array-length v2, v13

    const/4 v4, 0x3

    if-ne v2, v4, :cond_29

    .line 1788
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1798
    :try_start_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_26

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1801
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_d
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_26

    aget-object v27, v12, v20

    .line 1802
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1803
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1809
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    .line 1810
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v2, :cond_5d

    .line 1812
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1814
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    .line 1826
    .end local v26           #mcc:I
    :cond_28
    :goto_e
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 1792
    :cond_29
    const/4 v2, 0x3

    :try_start_15
    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1794
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_2a

    .line 1795
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1798
    :cond_2a
    :try_start_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2c

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1801
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_f
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c

    aget-object v27, v12, v20

    .line 1802
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1803
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1809
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2e

    .line 1810
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v2, :cond_5f

    .line 1812
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1814
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1826
    .end local v26           #mcc:I
    :cond_2e
    :goto_10
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1798
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_30

    .line 1800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1801
    .restart local v28       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_11
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_30

    aget-object v27, v12, v20

    .line 1802
    .restart local v27       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1803
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1809
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    .line 1810
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v4, :cond_57

    .line 1812
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1814
    .restart local v26       #mcc:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1826
    .end local v26           #mcc:I
    :cond_32
    :goto_12
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v4, :cond_33

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1798
    :cond_33
    throw v2

    .line 1835
    :pswitch_11
    const/16 v24, 0x1

    .line 1836
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1837
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1841
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    const/16 v24, 0x1

    .line 1843
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1844
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1846
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1850
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

    .line 1852
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    if-nez v2, :cond_0

    .line 1856
    :cond_34
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_36

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1858
    array-length v2, v13

    const/4 v4, 0x1

    if-le v2, v4, :cond_35

    .line 1859
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v4, 0xa

    if-ne v2, v4, :cond_37

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 1864
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1856
    :cond_36
    const/4 v2, 0x0

    goto :goto_13

    .line 1859
    :cond_37
    const/4 v2, 0x0

    goto :goto_14

    .line 1869
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_13
    const/16 v24, 0x1

    .line 1871
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1872
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1874
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1878
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .line 1882
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1883
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1884
    const-string v2, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1890
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_15
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_CPHS_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const/16 v24, 0x1

    .line 1893
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1894
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1896
    if-eqz v11, :cond_39

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_39

    .line 1897
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 1899
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1900
    .restart local v13       #data:[B
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1902
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_38

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1906
    :cond_38
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

    .line 1909
    .end local v13           #data:[B
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v4, 0x6f18

    const/16 v5, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 1917
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_SHORT_CPHS_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/16 v24, 0x1

    .line 1919
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1920
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1922
    if-eqz v11, :cond_0

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1923
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 1924
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1925
    .restart local v13       #data:[B
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1927
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_3a

    .line 1928
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

    .line 1931
    :cond_3a
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

    .line 1939
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_17
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_OPL_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/16 v24, 0x1

    .line 1943
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1944
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1947
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleOPL(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1954
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_18
    const-string v2, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_PNN_DONE "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/16 v24, 0x1

    .line 1958
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1960
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1963
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlePNN(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1990
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_19
    const/16 v24, 0x1

    .line 1992
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1993
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1996
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2000
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1a
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "marked read: sms "

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

    .line 2005
    :pswitch_1b
    const/16 v24, 0x0

    .line 2007
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2009
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 2011
    .local v22, index:[I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3b

    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3c

    .line 2012
    :cond_3b
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

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

    .line 2015
    :cond_3c
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

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v22, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2022
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v22           #index:[I
    :pswitch_1c
    const/16 v24, 0x0

    .line 2023
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2024
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3d

    .line 2025
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .line 2027
    :cond_3d
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2032
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1d
    const/16 v24, 0x1

    .line 2034
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iccType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2037
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2039
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2043
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v13}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 2045
    const-string v2, "1"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2046
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_3e

    const-string v2, "SST read done."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2051
    :cond_3e
    :goto_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkEONSavailable([B)V

    .line 2052
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkFDNavailable([B)V

    .line 2053
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCHV1available([B)V

    .line 2054
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSPNavailable([B)V

    .line 2055
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMSISDNavailable([B)V

    .line 2056
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSMSavailable([B)V

    .line 2057
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMBDNavailable([B)V

    .line 2058
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMWISavailable([B)V

    .line 2059
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCFISavailable([B)V

    goto/16 :goto_0

    .line 2047
    :cond_3f
    const-string v2, "2"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2048
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_3e

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

    goto :goto_15

    .line 2063
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_1e
    const/16 v24, 0x1

    .line 2065
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2067
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2071
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 2073
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iCPHS: "

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

    .line 2075
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsCSPEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2076
    const-string v2, "GSM"

    const-string v4, "CSP is Enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    .line 2078
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v4, 0x6f15

    const/16 v5, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2085
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1f
    const/16 v24, 0x0

    .line 2086
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2088
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_41

    .line 2089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2093
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2094
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Message;

    .line 2104
    .local v29, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_43

    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_43

    .line 2105
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2107
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2109
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_42

    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2111
    :cond_42
    const/16 v29, 0x0

    .line 2114
    :cond_43
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

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

    .line 2119
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v29           #onCphsCompleted:Landroid/os/Message;
    :cond_44
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2120
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2122
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2127
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_20
    const/16 v24, 0x0

    .line 2128
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2129
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_47

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2136
    :cond_45
    :goto_16
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2137
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_46

    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2138
    :cond_46
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2140
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2133
    :cond_47
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_16

    .line 2144
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_21
    const/16 v24, 0x0

    .line 2145
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2146
    .restart local v11       #ar:Landroid/os/AsyncResult;
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2147
    :cond_48
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 2148
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_0

    .line 2152
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_22
    const/16 v24, 0x1

    .line 2154
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2155
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2157
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4a

    .line 2161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v4, :cond_49

    .line 2162
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

    .line 2163
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

    .line 2165
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 2166
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 2170
    :cond_49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 2171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v33

    .line 2173
    .local v33, sp2:Landroid/content/SharedPreferences;
    invoke-interface/range {v33 .. v33}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 2174
    .local v16, editor2:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2175
    const-string v2, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2176
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2177
    const-string v2, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2178
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 2186
    .end local v16           #editor2:Landroid/content/SharedPreferences$Editor;
    .end local v33           #sp2:Landroid/content/SharedPreferences;
    :cond_4a
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

    .line 2189
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 2193
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 2194
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4c

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 2197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 2193
    :cond_4b
    const/4 v2, 0x0

    goto :goto_17

    .line 2194
    :cond_4c
    const/4 v2, 0x0

    goto :goto_18

    .line 2201
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_23
    const/16 v24, 0x1

    .line 2203
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2205
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4d

    .line 2206
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2210
    :cond_4d
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2212
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

    .line 2213
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->makeCSPtable([B)V

    .line 2214
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_0

    .line 2226
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_24
    const/16 v24, 0x1

    .line 2228
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2229
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2231
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4e

    .line 2232
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF IMSI_M"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2236
    :cond_4e
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imsi_m: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v21

    .line 2240
    .local v21, imsi_m:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imsi_m: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.imsim"

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2247
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v21           #imsi_m:Ljava/lang/String;
    :pswitch_25
    const/16 v24, 0x1

    .line 2249
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2250
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2252
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4f

    .line 2253
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[skt_irm]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2257
    :cond_4f
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skt_irm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v31

    .line 2261
    .local v31, skt_irm:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skt_irm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.irm"

    move-object/from16 v0, v31

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2268
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v31           #skt_irm:Ljava/lang/String;
    :pswitch_26
    const/16 v24, 0x1

    .line 2270
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2271
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2273
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_50

    .line 2274
    const-string v2, "GSM"

    const-string v4, "getting EF_PERSO have exception !!!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_0

    .line 2278
    :cond_50
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

    .line 2279
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->perso:[B

    .line 2280
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_0

    .line 2285
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :pswitch_27
    const/16 v24, 0x1

    .line 2287
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2288
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2290
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_51

    .line 2291
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[sponImsi1]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2295
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    aput-object v5, v2, v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 2297
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

    .line 2303
    :goto_19
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

    .line 2298
    :catch_4
    move-exception v17

    .line 2299
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

    .line 2300
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v2, v4

    goto :goto_19

    .line 2307
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_28
    const/16 v24, 0x1

    .line 2309
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2310
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2312
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_52

    .line 2313
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[sponImsi2]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2317
    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    aput-object v5, v2, v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 2319
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

    .line 2325
    :goto_1a
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

    .line 2320
    :catch_5
    move-exception v17

    .line 2321
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

    .line 2322
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 2323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v2, v4

    goto :goto_1a

    .line 2329
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_29
    const/16 v24, 0x1

    .line 2331
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2332
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2334
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_53

    .line 2335
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[sponImsi3]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2339
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    aput-object v5, v2, v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    .line 2341
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

    .line 2347
    :goto_1b
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

    .line 2342
    :catch_6
    move-exception v17

    .line 2343
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

    .line 2344
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v2, v4

    goto :goto_1b

    .line 2352
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_2a
    const/16 v24, 0x1

    .line 2354
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2355
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 2357
    .restart local v13       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_54

    .line 2358
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[roaming]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2362
    :cond_54
    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v30

    .line 2363
    .local v30, roaming:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v2, :cond_55

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

    .line 2364
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.roaming"

    move-object/from16 v0, v30

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1801
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v30           #roaming:Ljava/lang/String;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_56
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_11

    .line 1821
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_57
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1823
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1815
    :catch_7
    move-exception v14

    .line 1816
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1817
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1801
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v13       #data:[B
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_58
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 1821
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_59
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1823
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1815
    :catch_8
    move-exception v14

    .line 1816
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1817
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1801
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_5a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b

    .line 1821
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_5b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1823
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1815
    :catch_9
    move-exception v14

    .line 1816
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1817
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1801
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_5c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 1821
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_5d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1823
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1815
    :catch_a
    move-exception v14

    .line 1816
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1817
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1801
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #mccmnc:Ljava/lang/String;
    .restart local v28       #mccmncCode:Ljava/lang/String;
    :cond_5e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_f

    .line 1821
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v25           #len$:I
    .end local v27           #mccmnc:Ljava/lang/String;
    .end local v28           #mccmncCode:Ljava/lang/String;
    :cond_5f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1823
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1815
    :catch_b
    move-exception v14

    .line 1816
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1817
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_10

    .line 1414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_18
        :pswitch_0
        :pswitch_1d
        :pswitch_19
        :pswitch_1a
        :pswitch_1f
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_12
        :pswitch_20
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_e
        :pswitch_f
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public isAvailableVoiceMailInSIM()Z
    .locals 3

    .prologue
    .line 618
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAvailableMBDN: "

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

    .line 619
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    :cond_0
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3454
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3442
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

    .line 3443
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3446
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

    .line 3447
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2742
    const-string v3, "GSM"

    const-string v4, "SIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2748
    .local v1, operator:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2751
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
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

    .line 2759
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2760
    .local v2, sp_o2:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2761
    .local v0, editor_o2:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "key_paystate"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getO2payState()Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->value()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2762
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2769
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v7, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2771
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "LOADED"

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2780
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isRefreshedBySTK:Z

    .line 2782
    :cond_0
    return-void

    .line 2754
    .end local v0           #editor_o2:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp_o2:Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "SIM"

    const-string v4, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 449
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 450
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 451
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 452
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 453
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 454
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 456
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 457
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 458
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 459
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 460
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 472
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2731
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2733
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2734
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2739
    :cond_0
    :goto_0
    return-void

    .line 2735
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2736
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 969
    if-eqz p1, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 975
    :cond_0
    return-void
.end method

.method public onSimReady()V
    .locals 3

    .prologue
    .line 2936
    const-string v0, "GSM"

    const-string/jumbo v1, "onSimReady "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 2941
    const-string v0, "GSM"

    const-string/jumbo v1, "onSimReady:broadcastIccStateChangedIntent "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    const-string v0, "GSM"

    const-string/jumbo v1, "onSimReady:before fetchSimRecords() "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2946
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 11
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"

    .prologue
    const/4 v10, 0x1

    .line 781
    if-eq p1, v10, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    if-eqz p2, :cond_2

    .line 784
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 785
    :cond_2
    if-eqz p3, :cond_3

    .line 786
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 791
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

    .line 792
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

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 795
    .local v8, sp:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 796
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "cf_iconkey_voice"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 797
    const-string v0, "cf_iconkey_video"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 798
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_6

    .line 807
    if-eqz p2, :cond_4

    .line 808
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 815
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 816
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 826
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

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

    .line 831
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    if-eqz p2, :cond_7

    .line 833
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 842
    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    array-length v0, v0

    if-le v0, v10, :cond_8

    .line 843
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xa0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 852
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

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

    .line 856
    :catch_0
    move-exception v7

    .line 857
    .local v7, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 811
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

    .line 819
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2

    .line 837
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

    .line 847
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
    .line 864
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    if-eqz p2, :cond_2

    .line 867
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 868
    :cond_2
    if-eqz p3, :cond_3

    .line 869
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 874
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

    .line 875
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

    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 878
    .local v12, sp:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 879
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cf_iconkey_voice"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v1, "cf_iconkey_video"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v1, :cond_7

    .line 891
    if-eqz p2, :cond_4

    .line 892
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 893
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 899
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 900
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 901
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 910
    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 911
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_6

    .line 912
    const/4 v1, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 916
    :cond_6
    new-instance v9, Lcom/android/internal/telephony/AdnRecord;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v9, v1, v0}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .local v9, efCfisRecord:Lcom/android/internal/telephony/AdnRecord;
    const/16 v11, 0xe

    .line 921
    .local v11, recordSize:I
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v7

    .line 923
    .local v7, byteCfisRecord:[B
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v3, 0x2

    invoke-static {v7, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

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

    .line 930
    .end local v7           #byteCfisRecord:[B
    .end local v9           #efCfisRecord:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #recordSize:I
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    if-eqz p2, :cond_8

    .line 932
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 933
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 941
    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 942
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 951
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

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

    .line 955
    :catch_0
    move-exception v10

    .line 956
    .local v10, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v2, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 895
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

    .line 903
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xef

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_2

    .line 936
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

    .line 946
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
    .line 593
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 594
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 596
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SIMRecords;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

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

    .line 598
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 602
    return-void
.end method

.method public setSpnDynamic(Ljava/lang/String;)V
    .locals 11
    .parameter "currentPlmn"

    .prologue
    .line 2830
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2831
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 2834
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2836
    .local v5, simOper:Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2870
    :cond_0
    :goto_0
    return-void

    .line 2840
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2841
    .local v8, spnOverrideString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2842
    .local v6, spnDisplayRule:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2844
    .local v3, onlyOn:[Ljava/lang/String;
    if-nez v8, :cond_2

    if-ltz v6, :cond_0

    .line 2848
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2850
    .local v7, spnForCurrentLocale:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 2851
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2852
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 2859
    :cond_3
    if-eqz p1, :cond_0

    .line 2863
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 2864
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

    .line 2865
    :cond_4
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2866
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 2863
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 773
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 774
    return-void
.end method

.method public setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 777
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 765
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 766
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 769
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 651
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 652
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 654
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 684
    :goto_0
    return-void

    .line 658
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 659
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 661
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-eqz v0, :cond_1

    .line 665
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 669
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 680
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 682
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 699
    if-eq p1, v1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    if-gez p2, :cond_4

    .line 706
    const/4 p2, -0x1

    .line 713
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    .line 718
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 727
    if-gez p2, :cond_6

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 735
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

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

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v0, :cond_7

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

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

    .line 749
    :catch_0
    move-exception v6

    .line 750
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 707
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 710
    const/16 p2, 0xff

    goto :goto_1

    :cond_5
    move v0, v1

    .line 722
    goto :goto_2

    .line 732
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 742
    :cond_7
    const/16 v0, 0xa

    goto :goto_4
.end method

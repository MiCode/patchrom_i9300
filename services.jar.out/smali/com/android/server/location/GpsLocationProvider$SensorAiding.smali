.class Lcom/android/server/location/GpsLocationProvider$SensorAiding;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorAiding"
.end annotation


# static fields
.field private static final ACCURACY_INDEX:I = 0x2

.field private static final ALTITUDE_INDEX:I = 0x2

.field private static final BEARING_INDEX:I = 0x0

.field private static final LATITUDE_INDEX:I = 0x0

.field private static final LONGITUDE_INDEX:I = 0x1

.field private static final SENSORAIDING_DR_ENABLE:Z = false

.field private static final SENSORAIDING_FORCECALL_CHECK_AHEAD_TIME:J = 0xc8L

.field private static final SENSORAIDING_FORCECALL_ENTRY_INTERVAL:J = 0x5dcL

.field private static final SENSORAIDING_FORCECALL_KEEP_INTERVAL:J = 0x3e8L

.field private static final SENSORAIDING_LOGGING:Ljava/lang/String; = "GpsLogging"

.field private static final SENSORAIDING_LOGGING_TEMP:Ljava/lang/String; = "DynamicAccuracyValue"

.field private static final SENSORAIDING_LPP_CHANGED_FULLPOWER:I = 0x3

.field private static final SENSORAIDING_LPP_CHANGED_LOWPOWER:I = 0x1

.field private static final SENSORAIDING_LPP_INVALID:I = -0x1

.field private static final SENSORAIDING_LPP_OPERATION_MODE_MAX:I = 0x4

.field private static final SENSORAIDING_LPP_RETAINED_FULLPOWER:I = 0x2

.field private static final SENSORAIDING_LPP_RETAINED_LOWPOWER:I = 0x0

.field private static final SENSORAIDING_OPMODE_MAX:I = 0x2

.field private static final SENSORAIDING_OPMODE_PEDESTRIAN:I = 0x0

.field private static final SENSORAIDING_OPMODE_UNKNOWN:I = -0x1

.field private static final SENSORAIDING_OPMODE_VEHICLE:I = 0x1

.field private static final SENSOR_PACKET_ARRAY_SIZE:I = 0x8

.field private static final SENSOR_PACKET_MEMBER_SIZE:I = 0x4

.field private static final SENSOR_SAMPLING_RATE:I = 0xea60

.field private static final SENSOR_SAMPLING_TIME:I = 0x3c

.field private static final SPEED_INDEX:I = 0x1


# instance fields
.field private mAccAccuracy:I

.field private mAccPacket:[[F

.field private mAccRecent:[F

.field private mDeliverLocation:[D

.field private mDeliverLocationExt:[F

.field private mGyrAccuracy:I

.field private mGyrPacket:[[F

.field private mGyrRecent:[F

.field private mGyroSupported:Z

.field private mLPPCurrentMode:I

.field private mLPPIsInStop:Z

.field private mLPPPreviousMode:I

.field private mLPPTest_PositionMode:I

.field private mMagAccuracy:I

.field private mMagPacket:[[F

.field private mMagRecent:[F

.field private mNmeaAlti:D

.field private mNmeaAltiDiff:D

.field private mNmeaDate:J

.field private mNmeaEW:C

.field private mNmeaHeading:F

.field private mNmeaLat:D

.field private mNmeaLon:D

.field private mNmeaNS:C

.field private mNmeaOrgGGA:Ljava/lang/String;

.field private mNmeaOrgGLL:Ljava/lang/String;

.field private mNmeaOrgRMC:Ljava/lang/String;

.field private mNmeaOrgVTG:Ljava/lang/String;

.field private mNmeaSpeed:F

.field private mNmeaUTC:J

.field private mNmeaValid:C

.field private mNmeaVirGGA:Ljava/lang/String;

.field private mNmeaVirGLL:Ljava/lang/String;

.field private mNmeaVirLOG:Ljava/lang/String;

.field private mNmeaVirRMC:Ljava/lang/String;

.field private mNmeaVirVTG:Ljava/lang/String;

.field private mOriAccuracy:I

.field private mOriPacket:[[F

.field private mOriRecent:[F

.field private mReportNmeaCallFlag:I

.field private mRequestLocation:[D

.field private mRequestLocationExt:[F

.field private mRequestValid:[I

.field private mSensorAidingFlags:I

.field private mSensorAidingIsPedestrian:Z

.field private mSensorAidingIsValid:Z

.field private mSensorAidingIsVehicle:Z

.field private mSensorAidingLogging:I

.field private mSensorAidingOpMode:I

.field private mSensorAidingSetting:I

.field private mSensorPacketIndex:I

.field private mSensorPreviousSampledTime:J

.field private mSensorSamplingIntervalTime:[J

.field private mSensorSystemTime:[J

.field private mSnrs_SensorAiding:[F

.field private mSvAzimuths_SensorAiding:[F

.field private mSvCountSatInUse:I

.field private mSvCountUsed_SensorAiding:I

.field private mSvCountView_SensorAiding:I

.field private mSvElevations_SensorAiding:[F

.field private mSvMasks_SensorAiding:[I

.field private mSvs_SensorAiding:[I

.field private mTimeIntervalForceCall:J

.field private mTimeStampLastReportedLocation:J

.field private mTimeStampLastReportedNmea:J

.field private mTimeUTCLastReportedLocation:J

.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private final sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorOrientationListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2222
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2092
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    .line 2093
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    .line 2101
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    .line 2102
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    .line 2103
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    .line 2104
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    .line 2108
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    .line 2109
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    .line 2110
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    .line 2111
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 2114
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    .line 2115
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    .line 2116
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    .line 2117
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    .line 2119
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    .line 2120
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    .line 2121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 2123
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2126
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    .line 2136
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    .line 2137
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    .line 2138
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    .line 2139
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    .line 2140
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    .line 2143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 2144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    .line 2145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 2146
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    .line 2157
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 2161
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    .line 2162
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    .line 2163
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    .line 2164
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    .line 2165
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    .line 2166
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 2167
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 2168
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 2178
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2179
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 2181
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2183
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 2184
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 2192
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    .line 2193
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    .line 2194
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    .line 2196
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    .line 2199
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2200
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2201
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2202
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2203
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    .line 2204
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 2205
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 2206
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    .line 2207
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    .line 2209
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    .line 2211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 2212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    .line 2215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    .line 2216
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    .line 2217
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    .line 2218
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaValid:C

    .line 2219
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    .line 2220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    .line 2786
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 2818
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    .line 2846
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    .line 2871
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 2223
    return-void
.end method

.method private SensorAidingActivateAllSensor(Z)V
    .locals 5
    .parameter "IsAllSensor"

    .prologue
    const/4 v3, 0x1

    const v4, 0xea60

    .line 2294
    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    .line 2296
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2299
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2300
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2304
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-nez v0, :cond_2

    .line 2306
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 2307
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingActivateAllSensor : Gyroscope sensor is NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_2
    return-void
.end method

.method private SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "Nmea"

    .prologue
    .line 2932
    const/4 v0, 0x0

    .line 2934
    .local v0, checkSumVal:C
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2935
    .local v2, szTemp:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2936
    aget-char v3, v2, v1

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_1

    .line 2943
    :cond_0
    const-string v3, "%02X\r\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2938
    :cond_1
    aget-char v3, v2, v1

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2

    .line 2939
    aget-char v3, v2, v1

    xor-int/2addr v3, v0

    int-to-char v0, v3

    .line 2935
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private SensorAidingDeactivateAllSensor(Z)V
    .locals 3
    .parameter "IsAllSensor"

    .prologue
    const/4 v2, 0x1

    .line 2312
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 2313
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeactivateAllSensor : No registered sensorManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-ne v0, v2, :cond_2

    .line 2318
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 2319
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2322
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 2323
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2325
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    .line 2326
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2329
    :cond_4
    if-ne p1, v2, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    .line 2331
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2333
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method private SensorAidingDeliverSensorPacket()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2668
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;[[F[[F[[F[J[J)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 2675
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    if-eq v0, v1, :cond_0

    .line 2676
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 2726
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAiding LPP : Not Supported Mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2732
    :cond_0
    return-void

    .line 2678
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2682
    :pswitch_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Keep GPS OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2686
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2687
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-ne v0, v7, :cond_1

    .line 2689
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    .line 2691
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$4502(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2692
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_stop()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider;)Z

    .line 2693
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvCount:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    #calls: Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V
    invoke-static {v0, v7, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;II)V

    .line 2694
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Turn GPS OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2696
    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Already GPS Turned OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2701
    :pswitch_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Keep GPS ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2705
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2706
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2707
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$4502(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2708
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3202(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 2709
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$3102(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2710
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4902(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2711
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_start()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2712
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2713
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$4502(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2714
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : native_start failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2717
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    .line 2718
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Turn GPS ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2721
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Already GPS Turned ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2676
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private SensorAidingDeliverSvStatus()V
    .locals 1

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sv_status()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2665
    return-void
.end method

.method private SensorAidingDeregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    .line 2278
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_finalize()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2283
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 2284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 2287
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 2288
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 2290
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeregister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    return-void
.end method

.method private SensorAidingGetAccuracy()F
    .locals 2

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetAltitde()D
    .locals 2

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetBearing()F
    .locals 2

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetFlags()I
    .locals 1

    .prologue
    .line 2633
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    return v0
.end method

.method private SensorAidingGetLatitude()D
    .locals 2

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetLongitude()D
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetOpMode()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2621
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-nez v0, :cond_0

    .line 2622
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    .line 2629
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    return v0

    .line 2623
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-ne v0, v1, :cond_1

    .line 2624
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0

    .line 2626
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0
.end method

.method private SensorAidingGetSpeed()F
    .locals 2

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetValid()I
    .locals 2

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingIncreaseUTC()V
    .locals 27

    .prologue
    .line 2900
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v21, v0

    .line 2901
    .local v21, nUTCTimeAll:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v19, v0

    .line 2904
    .local v19, nUTCDateAll:J
    const-wide/16 v3, 0x2710

    div-long v11, v21, v3

    .line 2905
    .local v11, nHour:J
    const-wide/16 v3, 0x2710

    rem-long v3, v21, v3

    const-wide/16 v5, 0x64

    div-long v13, v3, v5

    .line 2906
    .local v13, nMinute:J
    const-wide/16 v3, 0x64

    rem-long v17, v21, v3

    .line 2908
    .local v17, nSecond:J
    const-wide/16 v3, 0x2710

    div-long v9, v19, v3

    .line 2909
    .local v9, nDate:J
    const-wide/16 v3, 0x2710

    rem-long v3, v19, v3

    const-wide/16 v5, 0x64

    div-long v15, v3, v5

    .line 2910
    .local v15, nMonth:J
    const-wide/16 v3, 0x64

    rem-long v23, v19, v3

    .line 2913
    .local v23, nYear:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2914
    .local v2, utcDate:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 2915
    const-wide/16 v3, 0x7d0

    add-long v3, v3, v23

    long-to-int v3, v3

    const-wide/16 v4, 0x1

    sub-long v4, v15, v4

    long-to-int v4, v4

    long-to-int v5, v9

    long-to-int v6, v11

    long-to-int v7, v13

    const-wide/16 v25, 0x1

    add-long v25, v25, v17

    move-wide/from16 v0, v25

    long-to-int v8, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2918
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    int-to-long v0, v3

    move-wide/from16 v23, v0

    .line 2919
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v15, v3

    .line 2920
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v9, v3

    .line 2921
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v11, v3

    .line 2922
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v13, v3

    .line 2923
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 2925
    const-wide/16 v3, 0x2710

    mul-long/2addr v3, v11

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v13

    add-long/2addr v3, v5

    add-long v3, v3, v17

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 2926
    const-wide/16 v3, 0x2710

    mul-long/2addr v3, v9

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v15

    add-long/2addr v3, v5

    add-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    .line 2927
    return-void
.end method

.method private SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "NmeaOrg"

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 3147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    .line 3151
    const-string v2, "$GPGGA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 3152
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 3155
    const-string v2, "[,*]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3156
    .local v0, splitNmea:[Ljava/lang/String;
    const/4 v2, 0x6

    aget-object v2, v0, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3157
    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3158
    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    :cond_0
    move-object p1, v1

    .line 3192
    .end local v0           #splitNmea:[Ljava/lang/String;
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 3164
    .restart local p1
    :cond_2
    const-string v2, "$GPRMC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 3165
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 3168
    const-string v2, "[,*]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3169
    .restart local v0       #splitNmea:[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 3170
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3171
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 3173
    :cond_3
    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3174
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    :cond_4
    move-object p1, v1

    .line 3179
    goto :goto_0

    .line 3180
    .end local v0           #splitNmea:[Ljava/lang/String;
    :cond_5
    const-string v2, "$GPVTG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 3181
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    move-object p1, v1

    .line 3184
    goto :goto_0

    .line 3185
    :cond_6
    const-string v2, "$GPGLL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 3186
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    move-object p1, v1

    .line 3189
    goto :goto_0
.end method

.method private SensorAidingLocationChanged(IDDDFFFJ)V
    .locals 15
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 2537
    const/4 v2, 0x6

    new-array v5, v2, [I

    .line 2539
    .local v5, utcTime:[I
    const-string v2, "RawGPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    float-to-double v6, v0

    const-wide v13, 0x400ccccccccccccdL

    mul-double/2addr v6, v13

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p11

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    .line 2542
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x1

    aput-wide p4, v2, v3

    .line 2543
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x2

    aput-wide p6, v2, v3

    .line 2544
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x0

    aput p9, v2, v3

    .line 2545
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x1

    const v4, 0x40666666

    mul-float v4, v4, p8

    aput v4, v2, v3

    .line 2546
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x2

    aput p10, v2, v3

    .line 2548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 2549
    .local v12, utcDate:Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 2550
    .local v10, tempTimeInMillis:J
    move-wide/from16 v0, p11

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2551
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2552
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v2

    .line 2553
    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2554
    const/4 v2, 0x3

    const/16 v3, 0xb

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2555
    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2556
    const/4 v2, 0x5

    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2562
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2563
    const/4 v8, 0x1

    .line 2568
    .local v8, isValid:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_gps_data([D[F[IJII)V
    invoke-static/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->access$3900(Lcom/android/server/location/GpsLocationProvider;[D[F[IJII)V

    .line 2572
    return-void

    .line 2565
    .end local v8           #isValid:I
    :cond_0
    const/4 v8, 0x0

    .restart local v8       #isValid:I
    goto :goto_0
.end method

.method private SensorAidingMakeCompensatedNmea()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 3197
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3198
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 3199
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 3200
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3201
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3203
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3204
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 3205
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 3206
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3207
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3209
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3210
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 3211
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 3212
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3213
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3215
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3216
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 3217
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 3218
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3219
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3221
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3222
    return-void
.end method

.method private SensorAidingMakeSensorPacket()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    .line 2735
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    if-ne v0, v4, :cond_2

    .line 2736
    :cond_0
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingMakeSensorPacket : Not Ready ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_1
    :goto_0
    return-void

    .line 2741
    :cond_2
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    .line 2742
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2745
    :cond_3
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/4 v0, 0x4

    if-ge v13, v0, :cond_4

    .line 2746
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2747
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2748
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2749
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2745
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2752
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 2753
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    cmp-long v0, v4, v11

    if-nez v0, :cond_6

    .line 2754
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aput-wide v11, v0, v4

    .line 2758
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v4, v0, v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 2760
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2761
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    .line 2763
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSensorPacket()V

    .line 2768
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long/2addr v6, v9

    const-wide/16 v9, 0xc8

    sub-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 2771
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 2772
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SensorAidingMakeSensorPacket : Call reportLocation() forcefully : SystemTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Last : Systemtime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UTC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long v11, v4, v6

    move-wide v4, v2

    move-wide v6, v2

    move v9, v8

    move v10, v8

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportLocation(IDDDFFFJ)V
    invoke-static/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->access$5100(Lcom/android/server/location/GpsLocationProvider;IDDDFFFJ)V

    .line 2774
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    goto/16 :goto_0

    .line 2756
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v5, v5, v6

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    sub-long/2addr v5, v9

    aput-wide v5, v0, v4

    goto/16 :goto_2

    .line 2776
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2780
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1

    .line 2781
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    goto/16 :goto_0
.end method

.method private SensorAidingMakeVirtualNmea()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 3226
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingIncreaseUTC()V

    .line 3228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3250
    :goto_0
    return-void

    .line 3233
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3234
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3235
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3237
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3238
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3239
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3241
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3242
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3243
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3245
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3246
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3247
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3249
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0
.end method

.method private SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sTitle"
    .parameter "sLog"

    .prologue
    const/4 v5, 0x0

    .line 3254
    if-nez p2, :cond_1

    .line 3273
    :cond_0
    :goto_0
    return-void

    .line 3260
    :cond_1
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-eqz v0, :cond_0

    .line 3264
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 3266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    .line 3270
    :goto_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 3271
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 3272
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0

    .line 3268
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@SENAD,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_1
.end method

.method private SensorAidingRegister()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2227
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    .line 2228
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    .line 2229
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    .line 2230
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 2231
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 2232
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2233
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    .line 2234
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 2235
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 2236
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 2237
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 2238
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 2239
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 2240
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2241
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 2243
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2244
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 2245
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 2247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    .line 2251
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "GpsLogging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    .line 2260
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingRegister : Logging is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-nez v0, :cond_0

    const-string v0, "OFF"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_initialize(I)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2267
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingSupportInversePortraitMode(I)V

    .line 2268
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    .line 2269
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    .line 2271
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingRegister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    return-void

    .line 2260
    :cond_0
    const-string v0, "ON"

    goto :goto_0
.end method

.method private SensorAidingReportLocation(IDDDFFFJ)V
    .locals 8
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 2359
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_pdr_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2360
    .local v2, CurrentSetting:I
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-eq v2, v4, :cond_0

    .line 2361
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 2362
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    .line 2366
    :goto_0
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 2367
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorAidingReportLocation : SensorAiding setting has been changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_0
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v4, :cond_2

    .line 2372
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 2444
    :goto_1
    return-void

    .line 2364
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    goto :goto_0

    .line 2376
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 2377
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 2379
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 2380
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2381
    const-wide/16 v4, 0x5dc

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    .line 2384
    :cond_3
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingLocationChanged(IDDDFFFJ)V

    .line 2385
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRequestLocation()V

    .line 2388
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 2389
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v3

    .line 2392
    .local v3, SensorAidingAccuracy:F
    float-to-double v4, v3

    const-wide v6, 0x4072c00000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 2393
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 2394
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 2399
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v5, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v4, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3102(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2400
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 2402
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorAidingReportLocation : LOCATION_INVALID SensorAiding\'s accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    .end local v3           #SensorAidingAccuracy:F
    :cond_4
    :goto_2
    if-nez p1, :cond_9

    .line 2429
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2432
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeVirtualNmea()V

    .line 2440
    :cond_5
    :goto_3
    const-string v4, "RawGGA"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 2441
    const-string v4, "RawRMC"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 2442
    const-string v4, "RawVTG"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    .line 2443
    const-string v4, "RawGLL"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    goto/16 :goto_1

    .line 2407
    .restart local v3       #SensorAidingAccuracy:F
    :cond_6
    if-nez p1, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 2408
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$3202(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 2410
    const-string v4, "GpsLocationProvider"

    const-string v5, "SensorAidingReportLocation : Set mTTFF = 1 to be sent an intent GPS_FIX_CHANGE_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_7
    const/16 v4, 0x1f

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 2414
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 2417
    cmpl-float v4, v3, p10

    if-eqz v4, :cond_4

    .line 2418
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v5, 0x2

    const/high16 v6, 0x41f0

    add-float/2addr v6, v3

    aput v6, v4, v5

    goto :goto_2

    .line 2423
    .end local v3           #SensorAidingAccuracy:F
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 2425
    const-string v4, "GpsLocationProvider"

    const-string v5, "SensorAidingReportLocation : Bypass raw GPS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2435
    :cond_9
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeCompensatedNmea()V

    goto :goto_3
.end method

.method private SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "NmeaOrg"

    .prologue
    .line 2509
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v0, :cond_0

    .line 2528
    .end local p1
    :goto_0
    return-object p1

    .line 2513
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    packed-switch v0, :pswitch_data_0

    .line 2527
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingReportNmea : Invalid "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2515
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2517
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    goto :goto_0

    .line 2519
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    goto :goto_0

    .line 2521
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    goto :goto_0

    .line 2523
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    goto :goto_0

    .line 2525
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_0

    .line 2513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private SensorAidingReportSvStatus(I)V
    .locals 8
    .parameter "svCount"

    .prologue
    const/4 v7, 0x1

    const/16 v4, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2447
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v2, :cond_1

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2451
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSvStatus()V

    .line 2453
    const/4 v1, 0x0

    .line 2454
    .local v1, svCountUse:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 2456
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvs:[I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v3

    aget v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v7, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 2457
    add-int/lit8 v1, v1, 0x1

    .line 2454
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2462
    :cond_3
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 2465
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_4

    if-le v1, v6, :cond_5

    .line 2466
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvs:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2467
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2468
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2469
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2470
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v4, 0x3

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2471
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 2472
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 2478
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    if-ne v2, v7, :cond_6

    .line 2481
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    .line 2498
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aput v5, v2, v6

    .line 2499
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    goto/16 :goto_0
.end method

.method private SensorAidingRequestLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2578
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_request_gps_data([D[F[I)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;[D[F[I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    .line 2581
    const-string v0, "AidGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v1, v0, v5

    const v2, 0x3e8e38e4

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 2585
    return-void
.end method

.method private SensorAidingRotationChanged()V
    .locals 4

    .prologue
    .line 2589
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 2591
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2592
    .local v0, nRotation:I
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorAidingRotationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_rotation_data(I)V
    invoke-static {v1, v0}, Lcom/android/server/location/GpsLocationProvider;->access$4100(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2599
    .end local v0           #nRotation:I
    :cond_0
    return-void
.end method

.method private SensorAidingStartNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2338
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2339
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2340
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPTest_PositionMode:I

    .line 2342
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 2343
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2344
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    .line 2346
    :cond_0
    return-void
.end method

.method private SensorAidingStopNavigating()Z
    .locals 2

    .prologue
    .line 2350
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 2351
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    .line 2352
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2354
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method private SensorAidingSupportInversePortraitMode(I)V
    .locals 3
    .parameter "isSupported"

    .prologue
    .line 2608
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingSupportInversePortraitMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_support_inverse_portrait_mode(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$4200(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2614
    return-void
.end method

.method private SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "NmeaOrg"

    .prologue
    .line 2947
    const/4 v7, 0x0

    .line 2948
    .local v7, nTemp:I
    const-wide/16 v4, 0x0

    .line 2951
    .local v4, fTemp:D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetOpMode()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v3, p1

    .line 3140
    .end local p1
    .local v3, NmeaOrg:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2956
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v3, p1

    .line 2957
    .end local p1
    .restart local v3       #NmeaOrg:Ljava/lang/String;
    goto :goto_0

    .line 2961
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .restart local p1
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 2962
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    int-to-double v0, v7

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    .line 2963
    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2964
    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    .line 2965
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2966
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_6

    .line 2967
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2968
    const/16 v19, 0x53

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    .line 2974
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 2975
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    int-to-double v0, v7

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    .line 2976
    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2977
    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    .line 2978
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2979
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_7

    .line 2980
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2981
    const/16 v19, 0x57

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    .line 2986
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    .line 2987
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    .line 2988
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v19

    const v20, 0x40666666

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    .line 2991
    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2992
    .local v14, strLat:Ljava/lang/String;
    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2993
    .local v15, strLon:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2994
    .local v9, strAlti:Ljava/lang/String;
    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 2995
    .local v16, strSpeed_K:Ljava/lang/String;
    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    const v23, 0x3fed0e56

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 2996
    .local v17, strSpeed_N:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2998
    .local v13, strHeading:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 3000
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v22

    const/high16 v23, 0x42c8

    div-float v22, v22, v23

    const/high16 v23, 0x4000

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3001
    .local v12, strHDOP:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 3002
    .local v10, strAltiDiff:Ljava/lang/String;
    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 3003
    .local v18, strUTC:Ljava/lang/String;
    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 3005
    .local v11, strDate:Ljava/lang/String;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGGA,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",1,00,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,,*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 3006
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 3008
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPRMC,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",,,A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 3009
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 3013
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPVTG,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",T,,M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",N,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",K*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 3014
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 3018
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3019
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGLL,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 3020
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 3024
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v10           #strAltiDiff:Ljava/lang/String;
    .end local v11           #strDate:Ljava/lang/String;
    .end local v12           #strHDOP:Ljava/lang/String;
    .end local v18           #strUTC:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v3, p1

    .line 3140
    .end local p1
    .restart local v3       #NmeaOrg:Ljava/lang/String;
    goto/16 :goto_0

    .line 2970
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .end local v9           #strAlti:Ljava/lang/String;
    .end local v13           #strHeading:Ljava/lang/String;
    .end local v14           #strLat:Ljava/lang/String;
    .end local v15           #strLon:Ljava/lang/String;
    .end local v16           #strSpeed_K:Ljava/lang/String;
    .end local v17           #strSpeed_N:Ljava/lang/String;
    .restart local p1
    :cond_6
    const/16 v19, 0x4e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    goto/16 :goto_1

    .line 2983
    :cond_7
    const/16 v19, 0x45

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    goto/16 :goto_2

    .line 3028
    .restart local v9       #strAlti:Ljava/lang/String;
    .restart local v13       #strHeading:Ljava/lang/String;
    .restart local v14       #strLat:Ljava/lang/String;
    .restart local v15       #strLon:Ljava/lang/String;
    .restart local v16       #strSpeed_K:Ljava/lang/String;
    .restart local v17       #strSpeed_N:Ljava/lang/String;
    :cond_8
    const-string v19, "[,*]"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3030
    .local v8, splitNmea:[Ljava/lang/String;
    const-string v19, "$GPGGA"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 3031
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 3032
    const/4 v6, 0x1

    .local v6, i:I
    :goto_4
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_9

    .line 3033
    packed-switch v6, :pswitch_data_0

    .line 3053
    :pswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3032
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3035
    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3036
    goto :goto_5

    .line 3038
    :pswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3039
    goto :goto_5

    .line 3041
    :pswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3042
    goto :goto_5

    .line 3044
    :pswitch_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3045
    goto/16 :goto_5

    .line 3047
    :pswitch_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3048
    goto/16 :goto_5

    .line 3050
    :pswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3051
    goto/16 :goto_5

    .line 3057
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3058
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 3059
    .end local v6           #i:I
    :cond_a
    const-string v19, "$GPRMC"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 3060
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 3061
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_6
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_b

    .line 3062
    packed-switch v6, :pswitch_data_1

    .line 3085
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3061
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3064
    :pswitch_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3065
    goto :goto_7

    .line 3067
    :pswitch_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3068
    goto :goto_7

    .line 3070
    :pswitch_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3071
    goto :goto_7

    .line 3073
    :pswitch_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3074
    goto :goto_7

    .line 3076
    :pswitch_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3077
    goto/16 :goto_7

    .line 3079
    :pswitch_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3080
    goto/16 :goto_7

    .line 3082
    :pswitch_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3083
    goto/16 :goto_7

    .line 3089
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3090
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 3091
    .end local v6           #i:I
    :cond_c
    const-string v19, "$GPVTG"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 3092
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 3093
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_8
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 3094
    sparse-switch v6, :sswitch_data_0

    .line 3105
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3093
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 3096
    :sswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3097
    goto :goto_9

    .line 3099
    :sswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3100
    goto :goto_9

    .line 3102
    :sswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3103
    goto :goto_9

    .line 3109
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3110
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 3111
    .end local v6           #i:I
    :cond_e
    const-string v19, "$GPGLL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 3112
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 3113
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_a
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_f

    .line 3114
    packed-switch v6, :pswitch_data_2

    .line 3131
    :pswitch_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3113
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 3116
    :pswitch_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3117
    goto :goto_b

    .line 3119
    :pswitch_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3120
    goto :goto_b

    .line 3122
    :pswitch_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3123
    goto :goto_b

    .line 3125
    :pswitch_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3126
    goto/16 :goto_b

    .line 3128
    :pswitch_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3129
    goto/16 :goto_b

    .line 3135
    :cond_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3136
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 3033
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 3062
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 3094
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 3114
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStartNavigating()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStopNavigating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;IDDDFFFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 2091
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportLocation(IDDDFFFJ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2091
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportSvStatus(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2091
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2091
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2091
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2091
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2091
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    return-object v0
.end method

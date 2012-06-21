.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;,
        Landroid/hardware/SensorManager$SensorEventPool;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.0010f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEC_MOTION_ENGINE:I = 0x1

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_HAL_FOR_TABLET:I = 0x2

.field public static final SENSOR_HAL_FOR_WIDE_TABLET:I = 0x4

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 373
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 377
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 709
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 710
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 713
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 714
    :try_start_0
    sget-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_3

    .line 715
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 717
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 719
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    sput-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 721
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 725
    :try_start_1
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v3

    sput v3, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 737
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 738
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 739
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 741
    .local v1, i:I
    :cond_1
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 742
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 743
    if-ltz v1, :cond_2

    .line 746
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 747
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v3, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 750
    :cond_2
    if-gtz v1, :cond_1

    .line 752
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, p0, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(Landroid/hardware/SensorManager;I)V

    sput-object v3, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 753
    new-instance v3, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 755
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_3
    monitor-exit v4

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 732
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 86
    sget v0, Landroid/hardware/SensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput p0, Landroid/hardware/SensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Landroid/hardware/SensorManager$SensorEventPool;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    return-object v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 12
    .parameter "sensor"

    .prologue
    const/4 v8, 0x1

    .line 1117
    const/4 v6, 0x0

    .line 1118
    .local v6, result:Z
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1119
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1120
    .local v0, handle:I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    .line 1123
    .local v7, type:I
    const v4, 0x30d40

    .line 1124
    .local v4, minDelay:I
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1125
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1126
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v9

    if-le v4, v9, :cond_1

    .line 1127
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v4

    .line 1128
    :cond_1
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set min delay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1133
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_2
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1134
    .restart local v1       #i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1136
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, listener_name:Ljava/lang/String;
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Before sending... delay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    sget v9, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v9, v3, v0, v4}, Landroid/hardware/SensorManager;->send_delay(ILjava/lang/String;II)Z

    move-result v6

    .line 1146
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #listener_name:Ljava/lang/String;
    :goto_1
    return v8

    .line 1142
    :cond_4
    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 1143
    :cond_5
    sget v8, Landroid/hardware/SensorManager;->sQueue:I

    const-string v9, "Sending .. normal delay 200ms"

    const v10, 0x30d40

    invoke-static {v8, v9, v0, v10}, Landroid/hardware/SensorManager;->send_delay(ILjava/lang/String;II)Z

    move-result v6

    .line 1144
    const-string v8, "SensorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set normal delay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_6
    sget v8, Landroid/hardware/SensorManager;->sQueue:I

    const/4 v9, -0x1

    invoke-static {v8, v5, v0, v9}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v8

    goto :goto_1
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 6
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 1104
    const/4 v4, 0x0

    .line 1105
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1106
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1107
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1108
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1109
    .local v0, handle:I
    sget v5, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 1113
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static getAltitude(FF)F
    .locals 7
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 1793
    const v0, 0x3e42dcae

    .line 1794
    .local v0, coef:F
    const v1, 0x472d2a00

    const/high16 v2, 0x3f80

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 2090
    const/4 v11, 0x0

    .local v11, rd1:F
    const/4 v12, 0x0

    .local v12, rd4:F
    const/4 v13, 0x0

    .local v13, rd6:F
    const/4 v14, 0x0

    .local v14, rd7:F
    const/4 v15, 0x0

    .line 2091
    .local v15, rd8:F
    const/16 v16, 0x0

    .local v16, ri0:F
    const/16 v17, 0x0

    .local v17, ri1:F
    const/16 v18, 0x0

    .local v18, ri2:F
    const/16 v19, 0x0

    .local v19, ri3:F
    const/16 v20, 0x0

    .local v20, ri4:F
    const/16 v21, 0x0

    .local v21, ri5:F
    const/16 v22, 0x0

    .local v22, ri6:F
    const/16 v23, 0x0

    .local v23, ri7:F
    const/16 v24, 0x0

    .line 2092
    .local v24, ri8:F
    const/4 v2, 0x0

    .local v2, pri0:F
    const/4 v3, 0x0

    .local v3, pri1:F
    const/4 v4, 0x0

    .local v4, pri2:F
    const/4 v5, 0x0

    .local v5, pri3:F
    const/4 v6, 0x0

    .local v6, pri4:F
    const/4 v7, 0x0

    .local v7, pri5:F
    const/4 v8, 0x0

    .local v8, pri6:F
    const/4 v9, 0x0

    .local v9, pri7:F
    const/4 v10, 0x0

    .line 2095
    .local v10, pri8:F
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 2096
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "R array length must be 3"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2098
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 2099
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 2100
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 2101
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 2102
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 2103
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 2104
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 2105
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 2106
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 2107
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 2124
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 2125
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 2126
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 2127
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 2128
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 2129
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 2130
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 2131
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 2132
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 2133
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 2153
    :goto_1
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 2154
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 2155
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 2156
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 2157
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 2159
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2160
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2161
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2163
    return-void

    .line 2108
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 2109
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 2110
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 2111
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 2112
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 2113
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 2114
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 2115
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 2116
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 2117
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_0

    .line 2121
    :cond_2
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "R array length must be 9 or 16"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2134
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 2135
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 2136
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 2137
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 2138
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 2139
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 2140
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 2141
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 2142
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 2143
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_1

    .line 2147
    :cond_4
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "prevR array length must be 9 or 16"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25
.end method

.method public static getInclination([F)F
    .locals 4
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1538
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1539
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private getLegacySensorType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 759
    packed-switch p1, :pswitch_data_0

    .line 769
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 761
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 763
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 765
    :pswitch_3
    const/16 v0, 0x80

    goto :goto_0

    .line 767
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1751
    array-length v0, p0

    if-ne v0, v8, :cond_0

    .line 1752
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1753
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1754
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1760
    :goto_0
    return-object p1

    .line 1756
    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1757
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1758
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 7
    .parameter "Q"
    .parameter "rv"

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2257
    array-length v0, p1

    if-eq v0, v6, :cond_0

    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 2258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rv array length must be 9 or 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2259
    :cond_0
    array-length v0, p0

    if-eq v0, v1, :cond_1

    .line 2260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Q array length must be 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2262
    :cond_1
    array-length v0, p1

    if-ne v0, v1, :cond_2

    .line 2263
    aget v0, p1, v6

    aput v0, p0, v3

    .line 2268
    :goto_0
    aget v0, p1, v3

    aput v0, p0, v4

    .line 2269
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2270
    aget v0, p1, v5

    aput v0, p0, v6

    .line 2271
    return-void

    .line 2265
    :cond_2
    const/high16 v0, 0x3f80

    aget v1, p1, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v3

    .line 2266
    aget v0, p0, v3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    aget v0, p0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_1
    aput v0, p0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getRotation()I
    .locals 2

    .prologue
    .line 1808
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1809
    :try_start_0
    sget v0, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v1

    return v0

    .line 1810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 27
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1463
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 1464
    .local v2, Ax:F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 1465
    .local v3, Ay:F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 1466
    .local v4, Az:F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 1467
    .local v5, Ex:F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 1468
    .local v6, Ey:F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 1469
    .local v7, Ez:F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 1470
    .local v8, Hx:F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 1471
    .local v9, Hy:F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 1472
    .local v10, Hz:F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1473
    .local v18, normH:F
    const v20, 0x3dcccccd

    cmpg-float v20, v18, v20

    if-gez v20, :cond_0

    .line 1476
    const/16 v20, 0x0

    .line 1520
    :goto_0
    return v20

    .line 1478
    :cond_0
    const/high16 v20, 0x3f80

    div-float v17, v20, v18

    .line 1479
    .local v17, invH:F
    mul-float v8, v8, v17

    .line 1480
    mul-float v9, v9, v17

    .line 1481
    mul-float v10, v10, v17

    .line 1482
    const/high16 v20, 0x3f80

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 1483
    .local v15, invA:F
    mul-float/2addr v2, v15

    .line 1484
    mul-float/2addr v3, v15

    .line 1485
    mul-float/2addr v4, v15

    .line 1486
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 1487
    .local v11, Mx:F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 1488
    .local v12, My:F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 1489
    .local v13, Mz:F
    if-eqz p0, :cond_1

    .line 1490
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1491
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 1492
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 1493
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 1501
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1505
    const/high16 v20, 0x3f80

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 1506
    .local v16, invE:F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 1507
    .local v14, c:F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 1508
    .local v19, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1509
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1510
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 1511
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 1520
    .end local v14           #c:F
    .end local v16           #invE:F
    .end local v19           #s:F
    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 1494
    :cond_3
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1495
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1496
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1497
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1498
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p0, v20

    goto/16 :goto_1

    .line 1512
    .restart local v14       #c:F
    .restart local v16       #invE:F
    .restart local v19       #s:F
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1513
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1514
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 1515
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 1516
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 1517
    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    goto/16 :goto_2
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 18
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 2187
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x3

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-eq v14, v15, :cond_0

    .line 2188
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "R array length must be 3 or 4"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2191
    :cond_0
    const/4 v14, 0x0

    aget v2, p1, v14

    .line 2192
    .local v2, q1:F
    const/4 v14, 0x1

    aget v6, p1, v14

    .line 2193
    .local v6, q2:F
    const/4 v14, 0x2

    aget v9, p1, v14

    .line 2195
    .local v9, q3:F
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    .line 2196
    const/4 v14, 0x3

    aget v1, p1, v14

    .line 2202
    .local v1, q0:F
    :goto_0
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v11, v14, v2

    .line 2203
    .local v11, sq_q1:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v12, v14, v6

    .line 2204
    .local v12, sq_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v13, v14, v9

    .line 2205
    .local v13, sq_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v4, v14, v6

    .line 2206
    .local v4, q1_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v10, v14, v1

    .line 2207
    .local v10, q3_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v5, v14, v9

    .line 2208
    .local v5, q1_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v7, v14, v1

    .line 2209
    .local v7, q2_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v8, v14, v9

    .line 2210
    .local v8, q2_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v3, v14, v1

    .line 2212
    .local v3, q1_q0:F
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_3

    .line 2213
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2214
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2215
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2217
    const/4 v14, 0x3

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2218
    const/4 v14, 0x4

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2219
    const/4 v14, 0x5

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2221
    const/4 v14, 0x6

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2222
    const/4 v14, 0x7

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2223
    const/16 v14, 0x8

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2247
    :goto_1
    return-void

    .line 2198
    .end local v1           #q0:F
    .end local v3           #q1_q0:F
    .end local v4           #q1_q2:F
    .end local v5           #q1_q3:F
    .end local v7           #q2_q0:F
    .end local v8           #q2_q3:F
    .end local v10           #q3_q0:F
    .end local v11           #sq_q1:F
    .end local v12           #sq_q2:F
    .end local v13           #sq_q3:F
    :cond_1
    const/high16 v14, 0x3f80

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    mul-float v15, v6, v6

    sub-float/2addr v14, v15

    mul-float v15, v9, v9

    sub-float v1, v14, v15

    .line 2199
    .restart local v1       #q0:F
    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_2

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 2224
    .restart local v3       #q1_q0:F
    .restart local v4       #q1_q2:F
    .restart local v5       #q1_q3:F
    .restart local v7       #q2_q0:F
    .restart local v8       #q2_q3:F
    .restart local v10       #q3_q0:F
    .restart local v11       #sq_q1:F
    .restart local v12       #sq_q2:F
    .restart local v13       #sq_q3:F
    :cond_3
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ne v14, v15, :cond_4

    .line 2225
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2226
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2227
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2228
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2230
    const/4 v14, 0x4

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2231
    const/4 v14, 0x5

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2232
    const/4 v14, 0x6

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2233
    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2235
    const/16 v14, 0x8

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2236
    const/16 v14, 0x9

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2237
    const/16 v14, 0xa

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2238
    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2240
    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0xe

    const/16 v17, 0x0

    aput v17, p0, v16

    aput v17, p0, v15

    aput v17, p0, v14

    .line 2241
    const/16 v14, 0xf

    const/high16 v15, 0x3f80

    aput v15, p0, v14

    goto :goto_1

    .line 2245
    :cond_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "R array length must be 9 or 16"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method static native gyro_factory_test([I[S[F)I
.end method

.method static native mag_factory_test([I[I[I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 7
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 922
    if-nez p3, :cond_1

    .line 923
    const/4 v3, 0x0

    .line 950
    :cond_0
    :goto_0
    return v3

    .line 925
    :cond_1
    const/4 v3, 0x0

    .line 927
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_0

    .line 929
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 930
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_0

    .line 934
    const/4 v1, 0x0

    .line 935
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 936
    :try_start_0
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 937
    if-nez v1, :cond_2

    .line 940
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_1
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 943
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 947
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1623
    if-ne p0, p3, :cond_2

    .line 1624
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1625
    .local v2, temp:[F
    monitor-enter v2

    .line 1627
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1628
    array-length v1, p3

    .line 1629
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1630
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1631
    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    .line 1635
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_1
    return v3

    .line 1633
    .restart local v2       #temp:[F
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    .end local v2           #temp:[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_1

    .line 1633
    .restart local v2       #temp:[F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 22
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1652
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1653
    .local v6, length:I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_0

    .line 1654
    const/4 v15, 0x0

    .line 1696
    :goto_0
    return v15

    .line 1655
    :cond_0
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_1

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_2

    .line 1656
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1657
    :cond_2
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_3

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_4

    .line 1658
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1659
    :cond_4
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1660
    const/4 v15, 0x0

    goto :goto_0

    .line 1665
    :cond_5
    xor-int v1, p1, p2

    .line 1668
    .local v1, Z:I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1669
    .local v12, x:I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1670
    .local v13, y:I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1673
    .local v14, z:I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1674
    .local v2, axis_y:I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1675
    .local v3, axis_z:I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_6

    .line 1676
    xor-int/lit16 v1, v1, 0x80

    .line 1678
    :cond_6
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_a

    const/4 v9, 0x1

    .line 1679
    .local v9, sx:Z
    :goto_1
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_b

    const/4 v10, 0x1

    .line 1680
    .local v10, sy:Z
    :goto_2
    const/16 v15, 0x80

    if-lt v1, v15, :cond_c

    const/4 v11, 0x1

    .line 1683
    .local v11, sz:Z
    :goto_3
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d

    const/4 v8, 0x4

    .line 1684
    .local v8, rowLength:I
    :goto_4
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5
    const/4 v15, 0x3

    if-ge v5, v15, :cond_12

    .line 1685
    mul-int v7, v5, v8

    .line 1686
    .local v7, offset:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    const/4 v15, 0x3

    if-ge v4, v15, :cond_11

    .line 1687
    if-ne v12, v4, :cond_7

    add-int v16, v7, v4

    if-eqz v9, :cond_e

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_7
    aput v15, p3, v16

    .line 1688
    :cond_7
    if-ne v13, v4, :cond_8

    add-int v16, v7, v4

    if-eqz v10, :cond_f

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8
    aput v15, p3, v16

    .line 1689
    :cond_8
    if-ne v14, v4, :cond_9

    add-int v16, v7, v4

    if-eqz v11, :cond_10

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_9
    aput v15, p3, v16

    .line 1686
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1678
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #offset:I
    .end local v8           #rowLength:I
    .end local v9           #sx:Z
    .end local v10           #sy:Z
    .end local v11           #sz:Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .line 1679
    .restart local v9       #sx:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1680
    .restart local v10       #sy:Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 1683
    .restart local v11       #sz:Z
    :cond_d
    const/4 v8, 0x3

    goto :goto_4

    .line 1687
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v7       #offset:I
    .restart local v8       #rowLength:I
    :cond_e
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_7

    .line 1688
    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_8

    .line 1689
    :cond_10
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_9

    .line 1684
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1692
    .end local v4           #i:I
    .end local v7           #offset:I
    :cond_12
    const/16 v15, 0x10

    if-ne v6, v15, :cond_13

    .line 1693
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1694
    const/16 v15, 0xf

    const/high16 v16, 0x3f80

    aput v16, p3, v15

    .line 1696
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method static native send_delay(ILjava/lang/String;II)Z
.end method

.method static native sensor_accel_calibrate(I)I
.end method

.method static native sensor_gyro_calibrate(I)I
.end method

.method static native sensors_calibration_available()I
.end method

.method static native sensors_calibration_get_gyro(DDDI)[F
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method static native sensors_get_supported_func()I
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method static native sensors_set_delay(II)I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 9
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 984
    if-nez p3, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    const/4 v4, 0x0

    .line 989
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 990
    :try_start_0
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 991
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 992
    if-eqz v4, :cond_0

    .line 994
    and-int v6, p4, p1

    if-eqz v6, :cond_0

    .line 996
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 997
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_0

    .line 1000
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1002
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1005
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1006
    const/4 v1, 0x0

    .line 1007
    .local v1, found:Z
    :try_start_1
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1008
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_2

    .line 1009
    const/4 v1, 0x1

    .line 1013
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_3
    if-nez v1, :cond_4

    .line 1014
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    :try_start_2
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1018
    :cond_4
    :try_start_3
    monitor-exit v7

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 991
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1016
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 1305
    if-nez p1, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1308
    :cond_0
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterListener:: disable all sensors for this listener,  listener = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1311
    :try_start_0
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1312
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 1313
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1314
    .local v2, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 1315
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1317
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1318
    .local v3, sensor:Landroid/hardware/Sensor;
    const v5, 0x7fffffff

    invoke-virtual {v2, v3, v5}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1319
    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_2

    .line 1324
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1312
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1324
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .locals 6
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1280
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener:: handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Listener= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1286
    :try_start_0
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1287
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1288
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1289
    .local v1, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 1290
    const v3, 0x7fffffff

    invoke-virtual {v1, p2, v3}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1292
    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1295
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1300
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_2
    invoke-direct {p0, p2}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1301
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1287
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 2
    .parameter "type"

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 852
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 816
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 817
    :try_start_0
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 818
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1

    .line 819
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 820
    move-object v3, v0

    .line 828
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 829
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 831
    :cond_1
    monitor-exit v0

    .line 832
    return-object v3

    .line 822
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 824
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 825
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSensors()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 779
    const/4 v3, 0x0

    .line 780
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 781
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 782
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 784
    :pswitch_0
    or-int/lit8 v3, v3, 0x2

    .line 785
    goto :goto_0

    .line 787
    :pswitch_1
    or-int/lit8 v3, v3, 0x8

    .line 788
    goto :goto_0

    .line 790
    :pswitch_2
    or-int/lit16 v3, v3, 0x81

    goto :goto_0

    .line 795
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_0
    return v3

    .line 782
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSupportedFunction()I
    .locals 2

    .prologue
    .line 1856
    const-string v0, "SensorManager"

    const-string/jumbo v1, "sensors_get_supported_func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_get_supported_func()I

    move-result v0

    return v0
.end method

.method public onRotationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 1802
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1803
    :try_start_0
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1804
    monitor-exit v1

    .line 1805
    return-void

    .line 1804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 6
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 1183
    if-gez p3, :cond_0

    .line 1185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate must be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z
    .locals 12
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"
    .parameter "gyroCalibrationLevel"

    .prologue
    .line 1192
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1193
    :cond_0
    const/4 v7, 0x0

    .line 1276
    :goto_0
    return v7

    .line 1195
    :cond_1
    if-gez p3, :cond_2

    .line 1197
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "rate must be >=0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1200
    :cond_2
    const/4 v7, 0x1

    .line 1201
    .local v7, result:Z
    const/4 v1, -0x1

    .line 1202
    .local v1, delay:I
    packed-switch p3, :pswitch_data_0

    .line 1216
    move v1, p3

    .line 1220
    :goto_1
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1222
    const/4 v4, 0x0

    .line 1223
    .local v4, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_0
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1224
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-ne v8, p1, :cond_3

    .line 1225
    move-object v4, v2

    move-object v5, v4

    .line 1230
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v5, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_2
    :try_start_1
    const-string v8, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "registerListener :: handle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  name= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " delay= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Listener= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    if-nez v5, :cond_9

    .line 1235
    move v6, v1

    .line 1236
    .local v6, minDelay:I
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1237
    .restart local v2       #i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1238
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v8

    if-le v6, v8, :cond_4

    .line 1239
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v6

    goto :goto_3

    .line 1204
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v6           #minDelay:I
    :pswitch_0
    const/16 v1, 0x2710

    .line 1205
    goto/16 :goto_1

    .line 1207
    :pswitch_1
    const/16 v1, 0x4e20

    .line 1208
    goto/16 :goto_1

    .line 1210
    :pswitch_2
    const v1, 0x1046b

    .line 1211
    goto/16 :goto_1

    .line 1213
    :pswitch_3
    const v1, 0x30d40

    .line 1214
    goto/16 :goto_1

    .line 1245
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v6       #minDelay:I
    :cond_5
    new-instance v4, Landroid/hardware/SensorManager$ListenerDelegate;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, p2, v0}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1246
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_2
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1249
    sget-object v8, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v8}, Landroid/hardware/SensorManager$SensorThread;->startLocked()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1250
    invoke-direct {p0, p2, v6}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1252
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1253
    const/4 v7, 0x0

    .line 1272
    .end local v6           #minDelay:I
    :cond_6
    :goto_4
    invoke-virtual {v4, p2, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1273
    move/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->setGyroCalibrationLevel(I)V

    .line 1274
    monitor-exit v9

    goto/16 :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :goto_5
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1257
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #minDelay:I
    :cond_7
    :try_start_3
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1258
    const/4 v7, 0x0

    goto :goto_4

    .line 1262
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 1265
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v6           #minDelay:I
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_9
    :try_start_4
    invoke-virtual {v5, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 1266
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1268
    invoke-virtual {v5, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1269
    const/4 v7, 0x0

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_4

    .line 1274
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_5

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_a
    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_4

    :cond_b
    move-object v5, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto/16 :goto_2

    .line 1202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 873
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 12
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 901
    if-nez p1, :cond_0

    .line 915
    :goto_0
    return v10

    .line 904
    :cond_0
    const/4 v9, 0x0

    .local v9, result:Z
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 905
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_6

    :cond_1
    move v9, v2

    .line 907
    :goto_1
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_7

    :cond_2
    move v9, v2

    .line 909
    :goto_2
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v11

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v9, :cond_8

    :cond_3
    move v9, v2

    :goto_3
    move-object v1, p0

    move v3, v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 911
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v9, :cond_9

    :cond_4
    move v9, v2

    .line 913
    :goto_4
    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v9, :cond_a

    :cond_5
    move v9, v2

    :goto_5
    move v10, v9

    .line 915
    goto :goto_0

    :cond_6
    move v9, v10

    .line 905
    goto :goto_1

    :cond_7
    move v9, v10

    .line 907
    goto :goto_2

    :cond_8
    move v9, v10

    .line 909
    goto :goto_3

    :cond_9
    move v9, v10

    .line 911
    goto :goto_4

    :cond_a
    move v9, v10

    .line 913
    goto :goto_5
.end method

.method public runAccCalibration(I)I
    .locals 3
    .parameter "sensors"

    .prologue
    .line 1829
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runAccCalibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-static {p1}, Landroid/hardware/SensorManager;->sensor_accel_calibrate(I)I

    move-result v0

    return v0
.end method

.method public runGyroCalibration(I)I
    .locals 3
    .parameter "sensors"

    .prologue
    .line 1820
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runGyroCalibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-static {p1}, Landroid/hardware/SensorManager;->sensor_gyro_calibrate(I)I

    move-result v0

    return v0
.end method

.method public runGyroFactoryTest([I[S[F)I
    .locals 2
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    .line 1838
    const-string v0, "SensorManager"

    const-string v1, "Gyro sensor FactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    invoke-static {p1, p2, p3}, Landroid/hardware/SensorManager;->gyro_factory_test([I[S[F)I

    move-result v0

    return v0
.end method

.method public runMagFactoryTest([I[I[I)I
    .locals 2
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    .line 1847
    const-string v0, "SensorManager"

    const-string v1, "Mag sensor FactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {p1, p2, p3}, Landroid/hardware/SensorManager;->mag_factory_test([I[I[I)I

    move-result v0

    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 1069
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1054
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 1055
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1037
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 1038
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 968
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 970
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 972
    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 974
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 976
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 978
    return-void
.end method

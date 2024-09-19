.class public Lcom/android/camera/SensorStateManager;
.super Ljava/lang/Object;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorStateManager$MainHandler;,
        Lcom/android/camera/SensorStateManager$SensorStateAdapter;,
        Lcom/android/camera/SensorStateManager$SensorStateListener;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER:I = 0x8

.field public static final ACCELEROMETER_GAP_TOLERANCE:D = 0.5

.field public static final ACCELEROMETER_THRESHOLD:I = 0x10

.field public static final BACK_LIGHT_SENSOR_TYPE:I = 0x1fa266f

.field public static final CAPTURE_POSTURE_DEGREE:I

.field public static final DEBUG:Z

.field public static final EVENT_PROCESS_INTERVAL:J = 0x5f5e100L

.field public static final EVENT_TIME_OUT:J = 0x3b9aca00L

.field public static final GAME_ROTATION:I = 0x40

.field public static final GRAVITY:I = 0x20

.field public static final GYROSCOPE:I = 0x2

.field public static final GYROSCOPE_FOCUS_THRESHOLD:D = 1.0471975511965976

.field public static final GYROSCOPE_IGNORE_THRESHOLD:D = 0.05000000074505806

.field public static final GYROSCOPE_MOVING_THRESHOLD:D

.field public static final GYROSCOPE_STABLE_THRESHOLD:D

.field public static final GYROSCOPE_UNCALIBRATED:I = 0x80

.field public static final LEFT_CAPTURE_POSTURE:I = 0x1

.field public static final LINEAR_ACCELEROMETER:I = 0x1

.field public static final LINERACCELEROMETER_GAP_TOLERANCE:D = 0.8999999761581421

.field public static final LYING_HYSTERESIS:I = 0x5

.field public static final MAGNETIC_FIELD_UNCALIBRATED:I = 0x100

.field public static final MAX_LYING_BOUND:I = 0x99

.field public static final MAX_SENSOR_SIZE:I = 0xb

.field public static final MIN_LYING_BOUND:I = 0x1a

.field public static final MSG_DEVICE_BECOME_STABLE:I = 0x1

.field public static final MSG_UPDATE:I = 0x2

.field public static final NS2S:F = 1.0E-9f

.field public static final ORIENTATION:I = 0x4

.field public static final ORIENTATION_ACCELEROMETER:I = 0x200

.field public static final ORIENTATION_MAGNETIC_FIELD:I = 0x400

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field public static final PORTRAIT_CAPTURE_POSTURE:I = 0x0

.field public static final RIGHT_CAPTURE_POSTURE:I = 0x2

.field public static final ROTATION_VECTOR:I = 0x10

.field public static final SENSOR_ALL:I = 0x7ff

.field public static final TYPE_FLICKER_SENSOR:I = 0x1fa2670


# instance fields
.field public final TAG:Ljava/lang/String;

.field public isNeedFullGyroscope:Z

.field public mAccelerometerSensor:Landroid/hardware/Sensor;

.field public mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

.field public mAccelerometerTimeStamp:J

.field public mAccelerometerValues:[F

.field public mAngleSpeed:[D

.field public mAngleSpeedIndex:I

.field public mAngleTotal:D

.field public mBackLightSensor:Landroid/hardware/Sensor;

.field public mCapturePosture:I

.field public mFocusSensorEnabled:Z

.field public mGameRotationSensor:Landroid/hardware/Sensor;

.field public mGameRotationSensorListener:Landroid/hardware/SensorEventListener;

.field public mGradienterEnabled:Z

.field public mGravitySensor:Landroid/hardware/Sensor;

.field public mGravitySensorListener:Landroid/hardware/SensorEventListener;

.field public mGyroscope:Landroid/hardware/Sensor;

.field public mGyroscopeEnabled:Z

.field public mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field public mGyroscopeTimeStamp:J

.field public mGyroscopeUncalibrated:Landroid/hardware/Sensor;

.field public mGyroscopeUncalibratedListener:Landroid/hardware/SensorEventListener;

.field public mHandler:Landroid/os/Handler;

.field public mIsLyingForGradienter:Z

.field public mIsLyingForLie:Z

.field public mLieFlagEnabled:Z

.field public mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field public mLinearAccelerometer:Landroid/hardware/Sensor;

.field public mMagneticFieldUncalibrated:Landroid/hardware/Sensor;

.field public mMagneticFieldUncalibratedListener:Landroid/hardware/SensorEventListener;

.field public mMagneticFieldValues:[F

.field public mOrientation:F

.field public mOrientationAccelerometerSensor:Landroid/hardware/Sensor;

.field public mOrientationMagneticFieldSensor:Landroid/hardware/Sensor;

.field public mOrientationSensor:Landroid/hardware/Sensor;

.field public mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mRate:I

.field public mRoatationSensorListener:Landroid/hardware/SensorEventListener;

.field public mRotationVecotrSensor:Landroid/hardware/Sensor;

.field public mRotationVectorFlagEnabled:Z

.field public mSensorEventListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorListenerThread:Landroid/os/HandlerThread;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorRegistered:I

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mTTARFlagEnabled:Z

.field public mThreadHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/SensorStateManager;->DEBUG:Z

    const-string v0, "camera_stable_threshold"

    const/16 v1, 0x9

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    sput-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    const-string v0, "camera_moving_threshold"

    const/16 v2, 0xf

    .line 3
    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    const-string v0, "capture_degree"

    const/16 v1, 0x2d

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorSM@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    .line 6
    iput v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    const/4 v1, 0x5

    new-array v1, v1, [D

    .line 8
    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v1, v0

    const/4 v0, 0x1

    aput-wide v2, v1, v0

    const/4 v0, 0x2

    aput-wide v2, v1, v0

    const/4 v0, 0x3

    aput-wide v2, v1, v0

    const/4 v4, 0x4

    aput-wide v2, v1, v4

    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    .line 11
    iput-wide v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    new-array v1, v0, [F

    .line 12
    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerValues:[F

    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldValues:[F

    .line 14
    new-instance v0, Lcom/android/camera/SensorStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$1;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 15
    new-instance v0, Lcom/android/camera/SensorStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$2;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 16
    new-instance v0, Lcom/android/camera/SensorStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$3;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 17
    new-instance v0, Lcom/android/camera/SensorStateManager$4;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$4;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    .line 18
    new-instance v0, Lcom/android/camera/SensorStateManager$5;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$5;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mRoatationSensorListener:Landroid/hardware/SensorEventListener;

    .line 19
    new-instance v0, Lcom/android/camera/SensorStateManager$6;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$6;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGravitySensorListener:Landroid/hardware/SensorEventListener;

    .line 20
    new-instance v0, Lcom/android/camera/SensorStateManager$7;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$7;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGameRotationSensorListener:Landroid/hardware/SensorEventListener;

    .line 21
    new-instance v0, Lcom/android/camera/SensorStateManager$8;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$8;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeUncalibratedListener:Landroid/hardware/SensorEventListener;

    .line 22
    new-instance v0, Lcom/android/camera/SensorStateManager$9;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$9;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldUncalibratedListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/SensorStateManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide v0
.end method

.method public static synthetic access$1000(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mLieFlagEnabled:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/SensorStateManager;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/SensorStateManager;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->calculateOrientation(FF)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/SensorStateManager;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerValues:[F

    return-object p0
.end method

.method public static synthetic access$1302(Lcom/android/camera/SensorStateManager;[F)[F
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerValues:[F

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/android/camera/SensorStateManager;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldValues:[F

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/camera/SensorStateManager;[F)[F
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldValues:[F

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/SensorStateManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/SensorStateManager;F)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->normalizeDegree(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/SensorStateManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p0
.end method

.method public static synthetic access$1702(Lcom/android/camera/SensorStateManager;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p1
.end method

.method public static synthetic access$1800(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBecomeStable()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->isNeedFullGyroscope:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/SensorStateManager;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    return-void
.end method

.method public static synthetic access$300()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBeginMoving()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/SensorStateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/SensorStateManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p1
.end method

.method public static synthetic access$504(Lcom/android/camera/SensorStateManager;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method public static synthetic access$600(Lcom/android/camera/SensorStateManager;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/SensorStateManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method public static synthetic access$702(Lcom/android/camera/SensorStateManager;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide p1
.end method

.method public static synthetic access$718(Lcom/android/camera/SensorStateManager;D)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/android/camera/SensorStateManager;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->deviceKeepMoving(D)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/SensorStateManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method public static synthetic access$902(Lcom/android/camera/SensorStateManager;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method private calculateOrientation(FF)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mLieFlagEnabled:Z

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 5
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    add-int/lit8 v6, v2, 0xa

    rsub-int v2, v2, 0xaa

    int-to-float v6, v6

    cmpg-float v7, p1, v6

    if-lez v7, :cond_2

    int-to-float v7, v2

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_3

    :cond_2
    cmpg-float v6, v1, v6

    if-lez v6, :cond_4

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    .line 6
    :goto_2
    iget-boolean v6, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    if-eq v2, v6, :cond_5

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    .line 8
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SensorEventListenerImpl TYPE_ORIENTATION mIsLyingForLie="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    invoke-interface {v0, v2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceLieChanged(Z)V

    .line 10
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v2, :cond_a

    .line 11
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    add-int/lit8 v2, v3, 0x1a

    rsub-int v3, v3, 0x99

    int-to-float v2, v2

    cmpg-float v6, p1, v2

    if-lez v6, :cond_7

    int-to-float v6, v3

    cmpl-float p1, p1, v6

    if-ltz p1, :cond_8

    :cond_7
    cmpg-float p1, v1, v2

    if-lez p1, :cond_9

    int-to-float p1, v3

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v5

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v4

    .line 12
    :goto_5
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    if-eq p1, v2, :cond_a

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    .line 14
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorEventListenerImpl TYPE_ORIENTATION mIsLyingForGradienter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget p1, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    invoke-interface {v0, p1, v2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    :cond_a
    const/high16 p1, 0x42b40000    # 90.0f

    sub-float/2addr v1, p1

    .line 16
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_e

    .line 17
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    cmpg-float p1, p2, v1

    if-gez p1, :cond_b

    goto :goto_6

    :cond_b
    move v4, v0

    .line 18
    :goto_6
    invoke-direct {p0, v4}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    goto :goto_8

    :cond_c
    cmpl-float p1, p2, v1

    if-lez p1, :cond_d

    goto :goto_7

    :cond_d
    move v4, v0

    .line 19
    :goto_7
    invoke-direct {p0, v4}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    goto :goto_8

    .line 20
    :cond_e
    invoke-direct {p0, v5}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    :goto_8
    return-void
.end method

.method private changeCapturePosture(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->notifyDevicePostureChanged()V

    :cond_0
    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBecomeStable()V

    :cond_0
    return-void
.end method

.method private deviceBeginMoving()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBeginMoving()V

    :cond_0
    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method private getOrientationType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_0

    const/16 p0, 0x600

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method private declared-synchronized getSensorStateListener()Lcom/android/camera/SensorStateManager$SensorStateListener;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isContains(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInited()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPartialContains(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private normalizeDegree(F)F
    .locals 1

    :goto_0
    const/high16 p0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    sub-float/2addr p1, p0

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr p1, p0

    goto :goto_1

    :cond_1
    return p1
.end method

.method private update(IZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    invoke-static {v0, p1}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget v1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    invoke-static {v1, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->register(IZ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    const-string/jumbo p1, "update sensor %d, enable "

    invoke-static {p0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    .line 4
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    .line 5
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 6
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 7
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationAccelerometerSensor:Landroid/hardware/Sensor;

    .line 8
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationMagneticFieldSensor:Landroid/hardware/Sensor;

    .line 9
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mRotationVecotrSensor:Landroid/hardware/Sensor;

    .line 10
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mGravitySensor:Landroid/hardware/Sensor;

    .line 11
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mGameRotationSensor:Landroid/hardware/Sensor;

    .line 12
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeUncalibrated:Landroid/hardware/Sensor;

    .line 13
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldUncalibrated:Landroid/hardware/Sensor;

    .line 14
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x1fa266f

    invoke-virtual {p1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mBackLightSensor:Landroid/hardware/Sensor;

    .line 15
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x1fa2670

    invoke-virtual {p1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/camera/Util;->setFlickSensorEnable(Z)V

    .line 16
    new-instance p1, Lcom/android/camera/SensorStateManager$MainHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/camera/SensorStateManager$MainHandler;-><init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    .line 18
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    const/16 p2, 0x200

    const/16 v4, 0x400

    if-nez p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    const/16 v6, 0x8

    invoke-virtual {p1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mRoatationSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mGravitySensorListener:Landroid/hardware/SensorEventListener;

    const/16 v7, 0x20

    invoke-virtual {p1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mGameRotationSensorListener:Landroid/hardware/SensorEventListener;

    const/16 v8, 0x40

    invoke-virtual {p1, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeUncalibratedListener:Landroid/hardware/SensorEventListener;

    const/16 v9, 0x80

    invoke-virtual {p1, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldUncalibrated:Landroid/hardware/Sensor;

    const/16 v5, 0x100

    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldUncalibratedListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    .line 32
    iget-object v10, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {p1, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_4

    .line 35
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationMagneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 37
    :cond_4
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :goto_2
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mRotationVecotrSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mGravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mGameRotationSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v8, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeUncalibrated:Landroid/hardware/Sensor;

    invoke-virtual {p1, v9, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldUncalibrated:Landroid/hardware/Sensor;

    if-eqz p1, :cond_5

    .line 44
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    const/16 p1, 0x7530

    .line 45
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    .line 46
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SensorListenerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    .line 47
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public isBackLightSensor()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mBackLightSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeviceLying()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reset fail cause not init"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "register fail cause not init"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 6
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getOrientationType()I

    move-result v2

    or-int/2addr v0, v2

    .line 7
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mLieFlagEnabled:Z

    if-eqz v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getOrientationType()I

    move-result v2

    or-int/2addr v0, v2

    .line 9
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mRotationVectorFlagEnabled:Z

    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x10

    .line 10
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mTTARFlagEnabled:Z

    if-eqz v2, :cond_6

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    .line 11
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeEnabled:Z

    if-eqz v2, :cond_7

    or-int/lit8 v0, v0, 0x2

    .line 12
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->register(IZ)V

    return-void
.end method

.method public register(IZ)V
    .locals 9

    .line 13
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "register fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x7ff

    .line 15
    iput-boolean p2, p0, Lcom/android/camera/SensorStateManager;->isNeedFullGyroscope:Z

    .line 16
    iget p2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    invoke-static {p2, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getOrientationType()I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    new-instance p2, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 21
    :cond_2
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string/jumbo v3, "register: init mThreadHandler when mSensorListenerThread is quited, so return! | sensor = %d"

    .line 23
    invoke-static {p2, v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    .line 25
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    if-nez p2, :cond_4

    or-int/lit8 p1, p1, 0x8

    goto :goto_1

    :cond_4
    or-int/lit8 p1, p1, 0x3

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    :cond_5
    iget p2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    not-int v3, p2

    and-int/2addr v3, p1

    if-nez v3, :cond_6

    .line 28
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string/jumbo p1, "register fail, no sensor need register, mSensorRegistered = %d, registerList = %d"

    .line 30
    invoke-static {p0, p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 31
    :cond_6
    sget-boolean p1, Lcom/android/camera/SensorStateManager;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 32
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move p1, v0

    :goto_2
    const/16 p2, 0xb

    if-ge p1, p2, :cond_c

    shl-int p2, v1, p1

    .line 33
    invoke-static {v3, p2}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 34
    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mSensorMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    if-nez v4, :cond_8

    .line 35
    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    const-string/jumbo p2, "register fail, device does not have this sensor, sensorKey = %d,"

    invoke-static {v4, p2, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    :cond_8
    if-eq p2, v2, :cond_a

    if-ne p2, v1, :cond_9

    goto :goto_3

    .line 36
    :cond_9
    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 37
    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorEventListener;

    iget v7, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v8, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 38
    iget v4, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    or-int/2addr p2, v4

    iput p2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    goto :goto_4

    .line 39
    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorEventListener;

    invoke-virtual {v5, v6, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    iget v4, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    or-int/2addr p2, v4

    iput p2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    :cond_b
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reset fail cause not init"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-void
.end method

.method public setFocusSensorEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFocusSensorEnabled fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eq v0, p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setGradienterEnabled fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getOrientationType()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setGyroscopeEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setGyroscopeEnabled fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeEnabled:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x2

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeEnabled:Z

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setLieIndicatorEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLieIndicatorEnabled fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mLieFlagEnabled:Z

    if-eq v0, p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->getOrientationType()I

    move-result v0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mLieFlagEnabled:Z

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setRotationVectorEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setRotationVectorEnabled fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationVectorFlagEnabled:Z

    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mRotationVectorFlagEnabled:Z

    const/16 v0, 0x10

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTTARSensorEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setTTARSensorEnabled fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mTTARFlagEnabled:Z

    if-eq v0, p1, :cond_1

    const/16 v0, 0x6a

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mTTARFlagEnabled:Z

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public unregister(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregister fail cause not init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x7ff

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/SensorStateManager;->isNeedFullGyroscope:Z

    .line 4
    iget v2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    if-nez v2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregister fail, no sensor registered"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-ne p1, v0, :cond_5

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_3
    or-int/lit8 p1, p1, 0x3

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_5
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    and-int v2, v0, p1

    const/4 v4, 0x1

    if-nez v2, :cond_6

    .line 12
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const-string/jumbo p1, "unregister fail, no sensor need unRegister, mSensorRegistered = %d, unRegisterList = %d"

    .line 14
    invoke-static {p0, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 15
    :cond_6
    sget-boolean p1, Lcom/android/camera/SensorStateManager;->DEBUG:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregister "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move p1, v1

    :goto_1
    const/16 v3, 0xb

    if-ge p1, v3, :cond_a

    shl-int v3, v4, p1

    .line 17
    invoke-static {v2, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 18
    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/android/camera/SensorStateManager;->mSensorEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorEventListener;

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 19
    iget v5, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    not-int v6, v3

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/SensorStateManager;->mSensorRegistered:I

    .line 20
    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez v5, :cond_8

    const/16 v5, 0x400

    goto :goto_2

    :cond_8
    const/4 v5, 0x4

    :goto_2
    if-ne v3, v5, :cond_9

    .line 21
    iput-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForGradienter:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mIsLyingForLie:Z

    new-array v3, v0, [F

    .line 23
    iput-object v3, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerValues:[F

    new-array v3, v0, [F

    .line 24
    iput-object v3, p0, Lcom/android/camera/SensorStateManager;->mMagneticFieldValues:[F

    .line 25
    invoke-direct {p0, v1}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

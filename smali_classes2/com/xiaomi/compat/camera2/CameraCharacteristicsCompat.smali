.class public Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;
.super Ljava/lang/Object;
.source "CameraCharacteristicsCompat.java"


# static fields
.field public static final CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "SCALER_AVAILABLE_MIN_FRAME_DURATIONS"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "SCALER_AVAILABLE_STALL_DURATIONS"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS"

    .line 5
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS"

    .line 6
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS"

    .line 7
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS"

    .line 8
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS"

    .line 9
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS"

    .line 10
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS"

    .line 11
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "HEIC_AVAILABLE_HEIC_STALL_DURATIONS"

    .line 12
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP"

    .line 13
    invoke-static {v0}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstant(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "CameraCharacteristicsCompat"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get constant null field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get constant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getNativeCopy(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

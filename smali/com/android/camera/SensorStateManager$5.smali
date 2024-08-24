.class public Lcom/android/camera/SensorStateManager$5;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$5;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager$5;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p0}, Lcom/android/camera/SensorStateManager;->access$000(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v1, [F

    const/4 v1, 0x0

    .line 4
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 5
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 6
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 7
    aget p1, p1, v1

    aput p1, v0, v1

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceRotationChanged([F)V

    :cond_2
    :goto_0
    return-void
.end method

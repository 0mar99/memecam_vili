.class public Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;
.super Ljava/lang/Object;
.source "WideSelfieEngineWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySensorEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;-><init>()V

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
    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_1

    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object p0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 4
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    .line 5
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->setSensorData([FJI)V

    :cond_1
    :goto_0
    return-void
.end method

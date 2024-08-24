.class public Lcom/android/camera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/LocationManager$LocationManagerHolder;,
        Lcom/android/camera/LocationManager$LocationListener;,
        Lcom/android/camera/LocationManager$LocationHandler;
    }
.end annotation


# static fields
.field public static final GPS_REQUEST_LOCATION_TIME_OUT:I = 0x4e20

.field public static final LOCAL_REQUEST_INTERVAL:J = 0xea60L

.field public static final LOCATION_TIME_THRESHOLD:J = 0xea60L

.field public static final START_LOCATION_UPDATE:I = 0x0

.field public static final STOP_GPS_LOCATION_UPDATE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LocationManager"

.field public static final VALID_LAST_KNOWN_LOCATION_AGE:J = 0x2bf20L


# instance fields
.field public mCacheLocation:Landroid/location/Location;

.field public final mHandler:Landroid/os/Handler;

.field public mLastKnownLocation:Landroid/location/Location;

.field public mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mRecordLocation:Z

.field public mThreadHandler:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/LocationManager$LocationListener;

    .line 3
    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string/jumbo v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraRequestLocationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mThreadHandler:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Lcom/android/camera/LocationManager$LocationHandler;

    iget-object v1, p0, Lcom/android/camera/LocationManager;->mThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/LocationManager$LocationHandler;-><init>(Lcom/android/camera/LocationManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/LocationManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/LocationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/LocationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingGPSLocationUpdates()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/LocationManager;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/LocationManager;->updateCacheLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/LocationManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method private getLastLocation()V
    .locals 4

    const-string v0, "LocationManager"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/android/camera/LocationManager;->getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/LocationManager;->mLastKnownLocation:Landroid/location/Location;

    .line 4
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/LocationManager;->getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "fail to request last location update, ignore"

    .line 5
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    .line 7
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/LocationManager;->isValidLastKnownLocation(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iput-object v1, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    .line 10
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last cache location is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    if-eqz p0, :cond_1

    const-string/jumbo p0, "not null"

    goto :goto_2

    :cond_1
    const-string/jumbo p0, "null"

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static instance()Lcom/android/camera/LocationManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager$LocationManagerHolder;->access$000()Lcom/android/camera/LocationManager;

    move-result-object v0

    return-object v0
.end method

.method private isValidLastKnownLocation(Landroid/location/Location;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 v0, 0x2bf20

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startReceivingLocationUpdates()V
    .locals 12

    const-string/jumbo v0, "provider does not exist "

    const-string v1, "fail to request location update, ignore"

    const-string v2, "LocationManager"

    .line 1
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v3, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :try_start_0
    const-string/jumbo v5, "network"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    .line 4
    iget-object v9, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/android/camera/LocationManager;->mThreadHandler:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    .line 6
    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    .line 8
    invoke-static {v2, v1, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v10, 0x0

    aget-object v10, v4, v10

    iget-object v4, p0, Lcom/android/camera/LocationManager;->mThreadHandler:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 11
    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 12
    iget-object v4, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v4, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    :cond_1
    iget-object v4, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timer maybe canceled "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v1

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v0

    .line 17
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo v0, "startReceivingLocationUpdates"

    .line 18
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->getLastLocation()V

    :cond_2
    return-void
.end method

.method private stopReceivingGPSLocationUpdates()V
    .locals 4

    const-string v0, "LocationManager"

    .line 1
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "fail to remove location listeners, ignore"

    .line 3
    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object p0, p0, v2

    iput-boolean v2, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    const-string/jumbo p0, "stopReceivingGPSLocationUpdates"

    .line 5
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v3, v2

    const-string v4, "LocationManager"

    if-ge v1, v3, :cond_0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "fail to remove location listeners, ignore"

    .line 5
    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_1
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "stopReceivingLocationUpdates"

    .line 7
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateCacheLocation(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/LocationManager;->getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    :goto_0
    return-void
.end method

.method public static validateLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateLocation: modify to now from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setTime(J)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingLocationUpdates()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentLocationDirectly()Landroid/location/Location;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v2, v1

    const-string v3, "LocationManager"

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/LocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get current location, it is from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {v1}, Lcom/android/camera/LocationManager;->validateLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No location received yet. cache location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "not null"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/camera/LocationManager;->mCacheLocation:Landroid/location/Location;

    invoke-static {p0}, Lcom/android/camera/LocationManager;->validateLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/LocationManager;->mLastKnownLocation:Landroid/location/Location;

    return-object p0
.end method

.method public recordLocation(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooOOoo;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooOOoo;-><init>(Lcom/android/camera/LocationManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

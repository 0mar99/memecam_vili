.class public final Lcom/xiaomi/compat/camera2/CameraConstructCompat;
.super Ljava/lang/Object;
.source "CameraConstructCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    return-object v6
.end method

.method public static getStreamConfigurationMap([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 23

    const-string v1, "CameraConstructCompat"

    .line 1
    const-class v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 2
    invoke-static {}, Lcom/xiaomi/compat/camera2/CameraConstructCompat;->isAndroidU()Z

    move-result v2

    const/16 v5, 0x12

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-array v2, v5, [Ljava/lang/Class;

    .line 3
    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v19

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v4

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v18

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v17

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v16

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v15

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v14

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v13

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v12

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v11

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v10

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v9

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v8

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v7

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v6

    const-class v22, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    aput-object v22, v2, v3

    const-class v22, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const/16 v21, 0x10

    aput-object v22, v2, v21

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x11

    aput-object v22, v2, v20

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/Class;

    .line 4
    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v19

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v4

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v18

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v17

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v16

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v15

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v14

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v13

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v12

    const-class v22, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v22, v2, v11

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v10

    const-class v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v22, v2, v9

    const-class v22, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    aput-object v22, v2, v8

    const-class v22, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    aput-object v22, v2, v7

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v22, v2, v6

    :goto_0
    const/16 v22, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to construct config map: null ctor"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22

    .line 7
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 8
    invoke-static {}, Lcom/xiaomi/compat/camera2/CameraConstructCompat;->isAndroidU()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v19

    aput-object p1, v2, v4

    aput-object p2, v2, v18

    aput-object p3, v2, v17

    aput-object p4, v2, v16

    aput-object p5, v2, v15

    aput-object p6, v2, v14

    aput-object p7, v2, v13

    aput-object p8, v2, v12

    aput-object p9, v2, v11

    aput-object p10, v2, v10

    aput-object p11, v2, v9

    aput-object v22, v2, v8

    aput-object v22, v2, v7

    aput-object v22, v2, v6

    aput-object p12, v2, v3

    const/16 v3, 0x10

    aput-object p13, v2, v3

    .line 9
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v2, v4

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v19

    aput-object p1, v2, v4

    aput-object p2, v2, v18

    aput-object p3, v2, v17

    aput-object p4, v2, v16

    aput-object p5, v2, v15

    aput-object p6, v2, v14

    aput-object p7, v2, v13

    aput-object p8, v2, v12

    aput-object p9, v2, v11

    aput-object p10, v2, v10

    aput-object p11, v2, v9

    aput-object p12, v2, v8

    aput-object p13, v2, v7

    .line 11
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    :goto_1
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Failed to construct config map. "

    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v22
.end method

.method public static isAndroidU()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

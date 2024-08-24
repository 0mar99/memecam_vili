.class public Lcom/android/camera/data/data/config/ComponentRunningZoom;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningZoom.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigZoom"


# instance fields
.field public mActualCameraId:I

.field public mCameraId:I

.field public mPortraitBokehZoomRatio:F


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private final isAuxCamera()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isBackCamera()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mCameraId:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isUltraTeleCamera()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isUltraWideBackCamera()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0xab

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->checkValueValid(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->isBackCamera()Z

    move-result v0

    const-string v1, "1.0"

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_6

    const/16 v0, 0xab

    if-eq p1, v0, :cond_4

    const/16 v0, 0xad

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_a

    const/16 v0, 0xba

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3
    :cond_2
    :pswitch_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 4
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 5
    :cond_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 6
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mPortraitBokehZoomRatio:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/4 v0, 0x0

    const-string/jumbo v2, "pref_ultra_wide_bokeh_enabled"

    .line 7
    invoke-virtual {p1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mPortraitBokehZoomRatio:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->setCvLensZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 10
    :cond_6
    :pswitch_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    sget p0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->isUltraWideBackCamera()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 14
    sget p0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 15
    :cond_9
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 16
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_a
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 18
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 19
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->isUltraWideBackCamera()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 20
    sget p0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->isAuxCamera()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 22
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->isUltraTeleCamera()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 24
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_camera_zoom_retain_key"

    return-object p0
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mCameraId:I

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mActualCameraId:I

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPortraitBokehZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningZoom;->mPortraitBokehZoomRatio:F

    return-void
.end method

.method public reset(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public resetComponentValue(I)V
    .locals 2

    const/16 v0, 0xab

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

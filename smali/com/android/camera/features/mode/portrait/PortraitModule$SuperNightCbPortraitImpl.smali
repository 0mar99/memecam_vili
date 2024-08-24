.class public Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;
.super Lcom/android/camera/module/image/SuperNightCbImageImpl;
.source "PortraitModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/portrait/PortraitModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperNightCbPortraitImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/portrait/PortraitModule;Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/module/image/SuperNightCbImageImpl;-><init>(Lcom/android/camera/module/Module;)V

    return-void
.end method


# virtual methods
.method public isSupportSuperNight()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getNormalFilterId()I

    move-result v0

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModule$SuperNightCbPortraitImpl;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPortraitLightingOn()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/image/SuperNightCbImageImpl;->commonCheck()Z

    move-result p0

    return p0
.end method

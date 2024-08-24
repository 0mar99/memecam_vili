.class public Lcom/android/camera/module/VideoModule$2;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000O()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_2
    move p1, v0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v0

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->setAnimationType(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->setPreviewSaveListener(Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string/jumbo p1, "recording_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-void
.end method

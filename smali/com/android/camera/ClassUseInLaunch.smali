.class public final Lcom/android/camera/ClassUseInLaunch;
.super Ljava/lang/Object;
.source "ClassUseInLaunch.java"


# static fields
.field public static final CLASS_IN_LAUNCH:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 102

    const-string v0, "androidx.fragment.app.Fragment"

    const-string v1, "androidx.fragment.app.FragmentActivity"

    const-string v2, "androidx.fragment.app.FragmentController"

    const-string v3, "androidx.fragment.app.FragmentManager"

    const-string v4, "androidx.recyclerview.widget.LinearLayoutManager"

    const-string v5, "androidx.recyclerview.widget.RecyclerView"

    const-string v6, "com.android.camera.ActivityBase"

    const-string v7, "com.android.camera.AudioMapMove"

    const-string v8, "com.android.camera.AutoLockManager"

    const-string v9, "com.android.camera.Camera"

    const-string v10, "com.android.camera.CameraBrightness"

    const-string v11, "com.android.camera.CameraIntentManager"

    const-string v12, "com.android.camera.CameraScreenNail"

    const-string v13, "com.android.camera.Coverage"

    const-string v14, "com.android.camera.FocusManagerAbstract"

    const-string v15, "com.android.camera.HybridZoomingSystem"

    const-string v16, "com.android.camera.LocalParallelService"

    const-string v17, "com.android.camera.LocationManager"

    const-string v18, "com.android.camera.MiuiCameraSound"

    const-string v19, "com.android.camera.PictureSizeManager"

    const-string v20, "com.android.camera.ThermalDetector"

    const-string v21, "com.android.camera.animation.AnimationComposite"

    const-string v22, "com.android.camera.data.data.config.ComponentConfigVideoQuality"

    const-string v23, "com.android.camera.data.data.config.ComponentConfigVideoSubFPS"

    const-string v24, "com.android.camera.data.data.config.ComponentConfigVideoSubQuality"

    const-string v25, "com.android.camera.data.data.config.DataItemConfig"

    const-string v26, "com.android.camera.data.data.extra.ComponentLiveVideoQuality"

    const-string v27, "com.android.camera.data.data.extra.DataItemLive"

    const-string v28, "com.android.camera.data.data.runing.ComponentRunningDualVideo"

    const-string v29, "com.android.camera.effect.EffectController"

    const-string v30, "com.android.camera.watermark.gen2.CustomTextWaterMark"

    const-string v31, "com.android.camera.effect.renders.EffectRenderGroup"

    const-string v32, "com.android.camera.features.mode.capture.CaptureModeUI"

    const-string v33, "com.android.camera.features.mode.capture.CaptureModule"

    const-string v34, "com.android.camera.fragment.BaseFragment"

    const-string v35, "com.android.camera.fragment.BaseFragmentDelegate"

    const-string v36, "com.android.camera.fragment.DispatchFragment"

    const-string v37, "com.android.camera.fragment.FragmentBottomPopupTips"

    const-string v38, "com.android.camera.fragment.FragmentMainContent"

    const-string v39, "com.android.camera.fragment.bottom.action.FragmentBottomAction"

    const-string v40, "com.android.camera.fragment.dual.FragmentDualCameraAdjust"

    const-string v41, "com.android.camera.fragment.modeselector.FragmentModeSelector"

    const-string v42, "com.android.camera.fragment.top.FragmentTopAlert"

    const-string v43, "com.android.camera.fragment.top.FragmentTopConfig"

    const-string v44, "com.android.camera.hdr10.ComponentConfigHDR10"

    const-string v45, "com.android.camera.module.common.BaseModuleCameraManager"

    const-string v46, "com.android.camera.module.image.Camera2ModuleHandler"

    const-string v47, "com.android.camera.module.image.ModuleSizeFormatManager"

    const-string v48, "com.android.camera.module.impl.ImplFactory"

    const-string v49, "com.android.camera.module.impl.component.MultiFeatureManagerImpl"

    const-string v50, "com.android.camera.module.interceptor.ASDInterceptorChain"

    const-string v51, "com.android.camera.module.interceptor.camera.SATMasterCameraIDMultipleASD"

    const-string v52, "com.android.camera.module.loader.FunctionCameraPrepare"

    const-string v53, "com.android.camera.module.loader.camera2.Camera2OpenManager"

    const-string v54, "com.android.camera.module.loader.camera2.Camera2OpenOnSubscribe"

    const-string v55, "com.android.camera.module.loader.camera2.CompletablePreFixCamera2Setup"

    const-string v56, "com.android.camera.module.loader.camera2.FocusManager"

    const-string v57, "com.android.camera.module.loader.camera2.ParallelSnapshotManager"

    const-string v58, "com.android.camera.module.shottype.CaptureShotTypeHandler"

    const-string v59, "com.android.camera.storage.ImageSaver"

    const-string v60, "com.android.camera.storage.MemoryManager"

    const-string v61, "com.android.camera.storage.Storage"

    const-string v62, "com.android.camera.trackfocus.TrackFocusRequestTag"

    const-string v63, "com.android.camera.trackfocus.TrackFocusView"

    const-string v64, "com.android.camera.ui.AdaptiveTextView"

    const-string v65, "com.android.camera.ui.AudioZoomIndicator"

    const-string v66, "com.android.camera.ui.CameraRenderEngine"

    const-string v67, "com.android.camera.ui.CameraSnapView"

    const-string v68, "com.android.camera.ui.DragLayout"

    const-string v69, "com.android.camera.ui.FaceView"

    const-string v70, "com.android.camera.ui.FocusView"

    const-string v71, "com.android.camera.ui.ModeSelectView"

    const-string v72, "com.android.camera.ui.RenderEngineAdapter"

    const-string v73, "com.android.camera.ui.ScreenHint"

    const-string v74, "com.android.camera.watermark.WaterMarkUtil"

    const-string v75, "com.android.camera.zoommap.RegionHelper"

    const-string v76, "com.android.camera.zoommap.ZoomMapController"

    const-string v77, "com.android.camera2.CameraConfigs"

    const-string v78, "com.android.camera2.CaptureRequestBuilder"

    const-string v79, "com.android.camera2.MiCamera2"

    const-string v80, "com.android.camera2.compat.MiCameraCompat"

    const-string v81, "com.android.camera2.imagereaders.SatImageReaderHandler"

    const-string v82, "com.android.camera2.vendortag.CameraCharacteristicsVendorTags"

    const-string v83, "com.android.camera2.vendortag.CaptureRequestVendorTags"

    const-string v84, "com.android.camera2.vendortag.CaptureResultVendorTags"

    const-string v85, "com.android.gallery3d.ui.ExtTexture"

    const-string v86, "com.android.gallery3d.ui.GLCanvasImpl"

    const-string v87, "com.android.zxing.decoders.CacheImageDecoder"

    const-string v88, "com.android.zxing.PreviewDecodeManager"

    const-string v89, "com.android.zxing.decoders.qrcode.QRCodeDecoder"

    const-string v90, "com.iqiyi.android.qigsaw.core.Qigsaw"

    const-string v91, "com.iqiyi.android.qigsaw.core.splitinstall.SplitApkInstaller"

    const-string v92, "com.iqiyi.android.qigsaw.core.splitinstall.SplitInstallSupervisorImpl"

    const-string v93, "com.iqiyi.android.qigsaw.core.splitinstall.SplitInstallerImpl"

    const-string v94, "com.uber.rxdogtag.DogTagObserver"

    const-string v95, "com.xiaomi.camera.core.PostProcessor"

    const-string v96, "com.xiaomi.camera.device.callable.OpenCameraCallable"

    const-string v97, "com.xiaomi.camera.rx.CameraOpenObservable"

    const-string v98, "io.reactivex.Completable"

    const-string v99, "miuix.appcompat.app.AppDelegate"

    const-string v100, "miuix.appcompat.internal.app.widget.ActionBarOverlayLayout"

    const-string v101, "com.android.camera.module.VideoModule"

    .line 1
    filled-new-array/range {v0 .. v101}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ClassUseInLaunch;->CLASS_IN_LAUNCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preload()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/ClassUseInLaunch;->CLASS_IN_LAUNCH:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

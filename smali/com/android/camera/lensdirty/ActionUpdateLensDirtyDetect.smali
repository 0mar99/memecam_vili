.class public Lcom/android/camera/lensdirty/ActionUpdateLensDirtyDetect;
.super Ljava/lang/Object;
.source "ActionUpdateLensDirtyDetect.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public mModuleWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/lensdirty/ActionUpdateLensDirtyDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/lensdirty/ActionUpdateLensDirtyDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMiAlgoASDVersion(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    .line 6
    invoke-static {v2, v1}, Lcom/android/camera/CameraSettings;->setLensDirtyDetectEnable(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;Z)V

    const-string/jumbo v3, "pref_lens_dirty_detect_times_key"

    .line 7
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v3, "pref_lens_dirty_detect_date_key"

    .line 8
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 9
    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->addLensDirtyDetectedTimes()V

    .line 11
    :goto_0
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x3d

    aput v4, v3, v1

    invoke-interface {v0, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 12
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/camera/module/common/IUserEventMgr;->updateLensDirtyDetect(Z)V

    :cond_1
    return-void
.end method

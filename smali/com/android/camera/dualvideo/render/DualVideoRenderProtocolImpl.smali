.class public Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;
.super Ljava/lang/Object;
.source "DualVideoRenderProtocolImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;


# static fields
.field public static final TAG:Ljava/lang/String; = "DualVideoRenderProtocol"


# instance fields
.field public final mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/RenderManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->setResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooooo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooooo0;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->removeExternalConfig(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->refreshSelectData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    return-object p0
.end method

.method public registerProtocol()V
    .locals 2

    const-string v0, "DualVideoRenderProtocol"

    const-string/jumbo v1, "registerProtocol: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const-string v0, "DualVideoRenderProtocol"

    const-string/jumbo v1, "unRegisterProtocol: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->release()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->restoreData()V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configNearRangeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;->this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 2
    instance-of p0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "configNearRangeMode"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/Camera2Proxy;->sendSatFallbackDisableRequest(ZZ)V

    .line 5
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "attr_near_range_mode"

    const-string/jumbo v0, "off"

    .line 6
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_common_tips"

    .line 7
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;->accept(Lcom/android/camera/module/Module;)V

    return-void
.end method

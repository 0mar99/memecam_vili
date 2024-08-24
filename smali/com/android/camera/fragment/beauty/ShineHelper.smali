.class public Lcom/android/camera/fragment/beauty/ShineHelper;
.super Ljava/lang/Object;
.source "ShineHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBeauty()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->clearBeauty()V

    :cond_0
    return-void
.end method

.method public static onBeautyChanged(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xef

    .line 2
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_0
    return-void
.end method

.method public static onFilterChanged(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc4

    .line 2
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_0
    return-void
.end method

.method public static onShineStateChanged()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public static onVideoBokehRatioChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xf3

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_0
    return-void
.end method

.method public static onVideoBokehWithRetentionChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xf4

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_0
    return-void
.end method

.method public static resetBeauty()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->resetBeauty()V

    :cond_0
    return-void
.end method

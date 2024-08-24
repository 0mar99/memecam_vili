.class public Lcom/android/camera/scene/SemanticsClassResultParse;
.super Ljava/lang/Object;
.source "SemanticsClassResultParse.java"

# interfaces
.implements Lcom/android/camera/scene/IResultParse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/scene/IResultParse<",
        "[",
        "Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;",
        ">;"
    }
.end annotation


# instance fields
.field public mLensDirtyDetectEnable:Z

.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/scene/SemanticsClassResultParse;->mLensDirtyDetectEnable:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/scene/SemanticsClassResultParse;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private eventTrack(I)V
    .locals 1

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "attr_asd_detect_tip"

    const-string v0, "asd_dirty_tip"

    .line 2
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_common_tips"

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    .line 2
    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/scene/SemanticsClassResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_6

    .line 5
    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isSceneChange(II)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 8
    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/scene/SemanticsClassResultParse;->mLensDirtyDetectEnable:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/scene/SemanticsClassResultParse;->mLensDirtyDetectEnable:Z

    .line 10
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IUserEventMgr;->showLensDirtyTip()V

    .line 11
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/camera/scene/SemanticsClassResultParse;->eventTrack(I)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic parseMiAlgoAsdResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/SemanticsClassResultParse;->parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Semantics)scenes size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Semantics)-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/android/camera/scene/SemanticsClassResultParse;->updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

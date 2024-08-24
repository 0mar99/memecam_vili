.class public Lcom/android/camera/module/CloneModule$StateListener;
.super Ljava/lang/Object;
.source "CloneModule.java"

# interfaces
.implements Lcom/xiaomi/fenshen/FenShenCam$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CloneModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListener"
.end annotation


# instance fields
.field public mModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/CloneModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CloneModule;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CloneModule;->onCloneMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    :cond_0
    return-void
.end method

.method public onPhotoResult([B)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    .line 2
    invoke-static {}, Lcom/android/camera/module/CloneModule;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhotoResult length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", module = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/module/CloneModule;->access$400(Lcom/android/camera/module/CloneModule;[B)V

    :cond_0
    return-void
.end method

.method public onStartPreview()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    .line 2
    invoke-static {}, Lcom/android/camera/module/CloneModule;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->resumePreview()V

    :cond_0
    return-void
.end method

.method public onStopPreview()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    .line 2
    invoke-static {}, Lcom/android/camera/module/CloneModule;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->pausePreview()V

    :cond_0
    return-void
.end method

.method public onStopRecord()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/CloneModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onStopRecord"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSubjectCount(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/module/CloneModule;->access$200(Lcom/android/camera/module/CloneModule;I)V

    :cond_0
    return-void
.end method

.method public onThumbnailResult([BIII)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/camera/protocol/protocols/CloneProcess;->onThumbnailResult([BIII)V

    :cond_0
    return-void
.end method

.method public onVideoSaved(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/CloneModule;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveVideo timeUsedMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->onVideoSaveFinish()V

    .line 4
    invoke-static {p0}, Lcom/android/camera/module/CloneModule;->access$500(Lcom/android/camera/module/CloneModule;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/CloneModule$StateListener;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CloneModule;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    :cond_0
    return-void
.end method

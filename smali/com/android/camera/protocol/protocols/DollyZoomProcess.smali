.class public interface abstract Lcom/android/camera/protocol/protocols/DollyZoomProcess;
.super Ljava/lang/Object;
.source "DollyZoomProcess.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/DollyZoomProcess;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/DollyZoomProcess;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    return-object v0
.end method


# virtual methods
.method public abstract canSnap()Z
.end method

.method public abstract isAdded()Z
.end method

.method public abstract isPreviewResult()Z
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onPreviewPrepare(Landroid/content/ContentValues;)V
.end method

.method public abstract onSaveFinish(Landroid/net/Uri;)V
.end method

.method public abstract prepare(Z)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract quit()V
.end method

.method public abstract restoreDollyZoomVideo()Lcom/android/camera/storage/mediastore/VideoFile;
.end method

.method public abstract showSaveAndGiveUp()V
.end method

.method public abstract stopCaptureToPreviewResult(Z)V
.end method

.method public abstract storeDollyZoomVideo(Lcom/android/camera/storage/mediastore/VideoFile;)V
.end method

.method public abstract updateCaptureMessage(IZ)V
.end method

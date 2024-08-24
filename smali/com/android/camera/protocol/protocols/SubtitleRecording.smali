.class public interface abstract Lcom/android/camera/protocol/protocols/SubtitleRecording;
.super Ljava/lang/Object;
.source "SubtitleRecording.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;
    }
.end annotation


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/SubtitleRecording;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/SubtitleRecording;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/SubtitleRecording;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/SubtitleRecording;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/SubtitleRecording;

    return-object v0
.end method


# virtual methods
.method public abstract checkNetWorkStatus()V
.end method

.method public abstract getSubtitleContentAsync(Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;J)V
.end method

.method public abstract getSubtitleContentSync()Ljava/lang/String;
.end method

.method public abstract handleSubtitleRecordingPause()V
.end method

.method public abstract handleSubtitleRecordingResume()V
.end method

.method public abstract handleSubtitleRecordingStart()V
.end method

.method public abstract handleSubtitleRecordingStop()V
.end method

.method public abstract initPermission()V
.end method

.method public abstract updateVerticalSwView(Z)V
.end method

.class public Lcom/android/camera/module/impl/component/VideoCastStateManager;
.super Ljava/lang/Object;
.source "VideoCastStateManager.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;


# instance fields
.field public mIsPausedState:Z

.field public mIsRecordingState:Z

.field public mRecordedDuration:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsPausedState:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mRecordedDuration:J

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsRecordingState:Z

    return-void
.end method

.method public static create()Lcom/android/camera/module/impl/component/VideoCastStateManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/VideoCastStateManager;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/VideoCastStateManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVideoCastRecordedDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mRecordedDuration:J

    return-wide v0
.end method

.method public isVideoCastStatePaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsPausedState:Z

    return p0
.end method

.method public isVideoCastStateRecording()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsRecordingState:Z

    return p0
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public setVideoCastRecordedDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mRecordedDuration:J

    return-void
.end method

.method public setVideoCastStatePaused(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsPausedState:Z

    return-void
.end method

.method public setVideoCastStateRecording(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsRecordingState:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

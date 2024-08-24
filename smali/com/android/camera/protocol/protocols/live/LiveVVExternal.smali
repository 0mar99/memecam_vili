.class public interface abstract Lcom/android/camera/protocol/protocols/live/LiveVVExternal;
.super Ljava/lang/Object;
.source "LiveVVExternal.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# virtual methods
.method public abstract combineVideoAudio(Lcom/android/camera/storage/mediastore/VideoFile;)V
.end method

.method public abstract combineVideoAudio(Ljava/lang/String;)V
.end method

.method public abstract getSegmentPath(I)Ljava/lang/String;
.end method

.method public abstract pausePlay()V
.end method

.method public abstract prepare(Lcom/android/camera/fragment/vv/VVItem;)V
.end method

.method public abstract resumePlay()V
.end method

.method public abstract startPlay(Landroid/view/Surface;)V
.end method

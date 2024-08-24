.class public interface abstract Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;
.super Ljava/lang/Object;
.source "PresentationDisplayProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# static fields
.field public static final SHOW_TYPE_MODULE:I = 0x2

.field public static final SHOW_TYPE_SWITCH:I = 0x1


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract animateCapture()V
.end method

.method public abstract cancel()V
.end method

.method public abstract hideAutoHibernation()V
.end method

.method public abstract hideDelayNumber()V
.end method

.method public abstract registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;I)V
.end method

.method public abstract setESPRecordingTimeState(I)V
.end method

.method public abstract show(I)V
.end method

.method public abstract showAutoHibernation()V
.end method

.method public abstract showDelayNumber(IZ)V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
.end method

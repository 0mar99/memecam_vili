.class public interface abstract Lcom/android/camera/protocol/protocols/CloneAction;
.super Ljava/lang/Object;
.source "CloneAction.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/CloneAction;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CloneAction;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/CloneAction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CloneAction;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/CloneAction;

    return-object v0
.end method


# virtual methods
.method public abstract onAdjustClicked()V
.end method

.method public abstract onCancelClicked()V
.end method

.method public abstract onCloneGuideClicked()V
.end method

.method public abstract onExitClicked()V
.end method

.method public abstract onFragmentResume()V
.end method

.method public abstract onGiveUpClicked()V
.end method

.method public abstract onGiveUpEditClicked()V
.end method

.method public abstract onPlayClicked()V
.end method

.method public abstract onResetEditClicked()V
.end method

.method public abstract onSaveClicked()V
.end method

.method public abstract onSaveEditClicked()V
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onStopClicked()V
.end method

.method public abstract onTapUp(FF)Z
.end method

.method public abstract onTimeFreezeClicked()V
.end method

.method public abstract onTouchDown(FF)Z
.end method

.method public abstract onTouchUp(FF)Z
.end method

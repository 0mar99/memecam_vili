.class public interface abstract Lcom/android/camera/protocol/protocols/BaseDelegate;
.super Ljava/lang/Object;
.source "BaseDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/BaseDelegate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BaseDelegate;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BaseDelegate;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BaseDelegate;

    return-object v0
.end method


# virtual methods
.method public varargs abstract delegateEvent(I[I)V
.end method

.method public abstract delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;
.end method

.method public abstract getActiveFragment(I)I
.end method

.method public abstract getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
.end method

.method public abstract getFragmentIndex(II)I
.end method

.method public abstract getOriginalFragment(I)I
.end method

.method public abstract getStoredFragment(I)I
.end method

.method public abstract init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
.end method

.method public abstract isViewContainerHidden(I)Z
.end method

.method public varargs abstract updateCurrentFragments(III[I)V
.end method

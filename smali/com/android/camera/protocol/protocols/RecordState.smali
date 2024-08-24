.class public interface abstract Lcom/android/camera/protocol/protocols/RecordState;
.super Ljava/lang/Object;
.source "RecordState.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/protocols/RecordState$PostAction;
    }
.end annotation


# static fields
.field public static final POST_AMBILIGHT:I = 0x3

.field public static final POST_HIGH_FPS:I = 0x1

.field public static final POST_PANORAMA:I = 0x2

.field public static final POST_SUPER_NIGHT_MANUAL:I = 0x4

.field public static final POST_SUPER_NIGHT_TRIGGER:I = 0x5


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/RecordState;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/RecordState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/RecordState;

    return-object v0
.end method


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onLongExposePrepare()V
.end method

.method public abstract onLongExposeStart()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostPreview()V
.end method

.method public abstract onPostSavingFinish()V
.end method

.method public abstract onPostSavingStart(I)V
.end method

.method public abstract onPrepare(Lcom/android/camera/module/Module;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

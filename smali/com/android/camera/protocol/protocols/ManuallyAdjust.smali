.class public interface abstract Lcom/android/camera/protocol/protocols/ManuallyAdjust;
.super Ljava/lang/Object;
.source "ManuallyAdjust.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/protocols/ManuallyAdjust$AdjustType;
    }
.end annotation


# static fields
.field public static final ADJUST_MANUAL:I = 0x1

.field public static final ADJUST_NOT_SPECIFIED:I = -0x1

.field public static final ADJUST_NULL:I


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/ManuallyAdjust;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    return-object v0
.end method


# virtual methods
.method public abstract forceUpdateManualView(Z)V
.end method

.method public abstract getSelectComponentData()Lcom/android/camera/data/data/ComponentData;
.end method

.method public abstract notifyDataSetChange()V
.end method

.method public abstract onRecordingPrepare()V
.end method

.method public abstract onRecordingStop()V
.end method

.method public abstract resetManually()V
.end method

.method public abstract resetManuallyUnselected()V
.end method

.method public abstract setManuallyLayoutVisible(Z)V
.end method

.method public abstract updateEVState(I)V
.end method

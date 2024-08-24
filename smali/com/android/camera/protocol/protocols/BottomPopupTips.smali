.class public interface abstract Lcom/android/camera/protocol/protocols/BottomPopupTips;
.super Ljava/lang/Object;
.source "BottomPopupTips.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;
.implements Lcom/android/camera/protocol/protocols/LyingDirectHint;


# static fields
.field public static final SUB_TIP_TAG_NEAR_RANGE:I = 0x1

.field public static final SUB_TIP_TAG_NIGHT:I = 0x2

.field public static final SUB_TIP_TAG_NONE:I


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/BottomPopupTips;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    return-object v0
.end method


# virtual methods
.method public abstract hideAiTips()V
.end method

.method public abstract hideAllTipImage(Z)V
.end method

.method public abstract hideAllTips(Z)V
.end method

.method public abstract hideNoDynamicTips()V
.end method

.method public abstract hideQrCodeTip()V
.end method

.method public abstract isNormalTagShowing(I)Z
.end method

.method public abstract isSubTipShowing(I)Z
.end method

.method public abstract reConfigAiTip()Z
.end method

.method public abstract reConfigQrCodeTip()Z
.end method

.method public abstract reInitTipImage()V
.end method

.method public abstract showQrCodeTip(Ljava/lang/String;)V
.end method

.method public abstract showTipGuideWindow(I)V
.end method

.method public abstract updateDynamicImageLayoutParams()V
.end method

.method public abstract updateSubTip(IZLjava/lang/Object;)V
.end method

.method public abstract updateTargetTipImage(I)Z
.end method

.method public abstract updateTipImage()V
.end method

.method public abstract updateTipState(I)V
.end method

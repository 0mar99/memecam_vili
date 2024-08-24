.class public interface abstract Lcom/android/camera/protocol/protocols/MimojiGifEditor;
.super Ljava/lang/Object;
.source "MimojiGifEditor.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/MimojiGifEditor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MimojiGifEditor;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/MimojiGifEditor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MimojiGifEditor;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MimojiGifEditor;

    return-object v0
.end method


# virtual methods
.method public abstract combineVideoAudio(Ljava/lang/String;J)V
.end method

.method public abstract coverGifError()V
.end method

.method public abstract coverGifSuccess(Lcom/android/camera/storage/mediastore/ImageFile;)V
.end method

.method public abstract operateGifPannelVisibleState(I)V
.end method

.method public abstract reconfigPreviewRadio(I)V
.end method

.method public abstract release()V
.end method

.method public abstract setPreviewCover(Landroid/graphics/Bitmap;)V
.end method

.method public abstract showPreviewCover(Z)V
.end method

.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/BaseView;
.implements Lcom/android/camera/protocol/BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiEditorControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/features/mimojis/mvp/base/BaseView<",
        "Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;",
        ">;",
        "Lcom/android/camera/protocol/BaseProtocol;"
    }
.end annotation


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    return-object v0
.end method


# virtual methods
.method public abstract createEmoticonPicture(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createEmoticonThumbnail()V
.end method

.method public abstract createEmoticonVideo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V
.end method

.method public abstract getTextureViewMarginTopHeight()I
.end method

.method public abstract isSetupCompleted()Z
.end method

.method public abstract onAvatarBindEnd()V
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onSurfaceViewPause()V
.end method

.method public abstract onSurfaceViewResume()V
.end method

.method public abstract onTypeConfigSelect(I)V
.end method

.method public abstract onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;IZ)V
.end method

.method public abstract quitAndSaveEdit(Z)V
.end method

.method public abstract quitCoverEmoticon()V
.end method

.method public abstract reInitMimojiEditState(I)V
.end method

.method public abstract refreshIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
.end method

.method public abstract releaseRender()V
.end method

.method public abstract requestRender(Z)V
.end method

.method public abstract resetClickEnable(Z)V
.end method

.method public abstract resetConfig()V
.end method

.method public abstract showEmoticon()V
.end method

.method public abstract startMimojiEdit(I)V
.end method

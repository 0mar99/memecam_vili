.class public Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;
.super Ljava/lang/Object;
.source "MimojiFuControlImpl.java"

# interfaces
.implements Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRecordEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->impl2()Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    move-result-object v1

    if-gtz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$102(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->updateEmoticonGifProgress(I)V

    .line 6
    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->coverEmoticonSuccess()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->updateEmoticonGifProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

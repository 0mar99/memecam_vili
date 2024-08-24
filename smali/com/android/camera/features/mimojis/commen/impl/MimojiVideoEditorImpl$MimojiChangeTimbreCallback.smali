.class public Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;
.super Ljava/lang/Object;
.source "MimojiVideoEditorImpl.java"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiChangeTimbreCallback"
.end annotation


# instance fields
.field public stopRecordType:I

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V

    return-void
.end method


# virtual methods
.method public OnConvertProgress(I)V
    .locals 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->stopRecordType:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$500(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$600(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji void combineVideoAudio[savePath] time  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "progress value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getStopRecordType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->stopRecordType:I

    return p0
.end method

.method public setStopRecordType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->stopRecordType:I

    return-void
.end method

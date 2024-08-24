.class public Lmiuix/graphics/gif/DecodeGifImageHelper$1;
.super Landroid/os/Handler;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;


# direct methods
.method public constructor <init>(Lmiuix/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;->this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;->this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;

    invoke-static {p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->access$000(Lmiuix/graphics/gif/DecodeGifImageHelper;)Lmiuix/graphics/gif/DecodeGifFrames;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/graphics/gif/DecodeGifFrames;->getAndClearDecodeResult()Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->handleDecodeFramesResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;->this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    :cond_1
    :goto_0
    return-void
.end method

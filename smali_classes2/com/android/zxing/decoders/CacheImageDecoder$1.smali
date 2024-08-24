.class public Lcom/android/zxing/decoders/CacheImageDecoder$1;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/decoders/CacheImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/zxing/decoders/CacheImageDecoder;


# direct methods
.method public constructor <init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/decoders/CacheImageDecoder$1;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/zxing/decoders/CacheImageDecoder$1;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {p2}, Lcom/android/zxing/decoders/CacheImageDecoder;->isNeedImage()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder$1;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {p0, p1, p3}, Lcom/android/zxing/decoders/CacheImageDecoder;->onPreviewFrame(Landroid/media/Image;I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

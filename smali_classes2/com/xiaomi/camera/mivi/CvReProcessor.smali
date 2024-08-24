.class public Lcom/xiaomi/camera/mivi/CvReProcessor;
.super Lcom/xiaomi/camera/mivi/IReProcessor;
.source "CvReProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CvReProcessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/IReProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public submit(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/IReProcessor$Callback;)V
    .locals 4

    .line 1
    new-instance p0, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;-><init>(Lcom/xiaomi/camera/mivi/bean/ResultImageData;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getImages()[Landroid/media/Image;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getImages()[Landroid/media/Image;

    move-result-object v1

    aget-object v1, v1, v0

    .line 4
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit format is not yuv, is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CvReProcessor"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->addOutputData([BII)V

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/xiaomi/camera/base/ImageUtil;->getBytesFromImage(Landroid/media/Image;)[B

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->addOutputData([BII)V

    .line 10
    :goto_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p2, p0}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onSuccess(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    goto :goto_3

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "there are some buffer is not received, resultImageData is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onError(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

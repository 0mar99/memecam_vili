.class public Lcom/xiaomi/camera/mivi/bean/ResultImageData;
.super Ljava/lang/Object;
.source "ResultImageData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResultImageData"


# instance fields
.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field public mFacing:I

.field public mFrameNumber:J

.field public mImageCount:I

.field public final mImages:[Landroid/media/Image;

.field public mMetadata:Ljava/lang/String;

.field public mOutputSize:Landroid/util/Size;

.field public mPictureName:Ljava/lang/String;

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/mivi/bean/RequestData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mType:I

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImageCount:I

    .line 4
    new-array v0, v0, [Landroid/media/Image;

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getTimestampUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->setTimestamp(J)V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->setFacing(I)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getFrameNumber()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mFrameNumber:J

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getMetadata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mMetadata:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getType()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mType:I

    return-void
.end method

.method private initOutputSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    const-string v1, "ResultImageData"

    if-eqz v0, :cond_0

    .line 2
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SNAP_SHOT_OUTPUT_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initOutputSize(from meta): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 5
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initOutputSize(from image): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mOutputSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public addImage(Landroid/media/Image;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResultImageData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    aput-object p1, v0, p2

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->initOutputSize()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    .line 3
    iget-wide v2, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mTimestamp:J

    iget-wide v4, p1, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iget-object p1, p1, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    .line 4
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getCustomCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object p0
.end method

.method public getFacing()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mFacing:I

    return p0
.end method

.method public getFrameNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mFrameNumber:J

    return-wide v0
.end method

.method public getImages()[Landroid/media/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    return-object p0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mMetadata:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mOutputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPictureName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mPictureName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mTimestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDataReady()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    array-length v0, p0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, p0, v3

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mMetadata:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    if-eqz v1, :cond_1

    .line 3
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResultImageData"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 7
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 8
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    aput-object v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mPictureName:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCaptureResult: mPictureName > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mPictureName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResultImageData"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->initOutputSize()V

    return-void
.end method

.method public setCustomCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-void
.end method

.method public setFacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mFacing:I

    return-void
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mMetadata:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mTimestamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameData{mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mImages:[Landroid/media/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomCaptureResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCustomCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mPictureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getOutputSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateOutputSize(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->mOutputSize:Landroid/util/Size;

    return-void
.end method

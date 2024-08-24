.class public Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;
.super Ljava/lang/Object;
.source "SaliencyProcessInputObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject$ImageFormat;
    }
.end annotation


# static fields
.field public static final NV12:I = 0x3

.field public static final NV21:I = 0x2

.field public static final RGB:I = 0x0

.field public static final RGBA:I = 0x1


# instance fields
.field public algoHandle:J

.field public bufferData:[B

.field public bufferSize:J

.field public height:I

.field public imgFormat:I

.field public imgHeight:I

.field public imgStride:I

.field public imgWidth:I

.field public left:I

.field public orientation:I

.field public rotateAngle:I

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->algoHandle:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgHeight:I

    .line 4
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgWidth:I

    .line 5
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgStride:I

    .line 6
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->orientation:I

    .line 7
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->rotateAngle:I

    .line 8
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgFormat:I

    .line 9
    iput-wide v0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferSize:J

    .line 10
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->left:I

    .line 11
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->top:I

    .line 12
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->width:I

    .line 13
    iput v2, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->height:I

    return-void
.end method


# virtual methods
.method public getAlgoHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->algoHandle:J

    return-wide v0
.end method

.method public getBufferData()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferData:[B

    return-object p0
.end method

.method public getBufferSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->height:I

    return p0
.end method

.method public getImgFormat()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgFormat:I

    return p0
.end method

.method public getImgHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgHeight:I

    return p0
.end method

.method public getImgStride()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgStride:I

    return p0
.end method

.method public getImgWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgWidth:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->left:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->orientation:I

    return p0
.end method

.method public getRotateAngle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->rotateAngle:I

    return p0
.end method

.method public getTop()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->top:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->width:I

    return p0
.end method

.method public setAlgoHandle(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->algoHandle:J

    return-void
.end method

.method public setBufferData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferData:[B

    return-void
.end method

.method public setBufferSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferSize:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->height:I

    return-void
.end method

.method public setImgFormat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgFormat:I

    return-void
.end method

.method public setImgHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgHeight:I

    return-void
.end method

.method public setImgStride(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgStride:I

    return-void
.end method

.method public setImgWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgWidth:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->left:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->orientation:I

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->rotateAngle:I

    return-void
.end method

.method public setRotateAngle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->rotateAngle:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->top:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaliencyProcessInputObject{algoHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->algoHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", imgHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotateAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->rotateAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->imgFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->bufferSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

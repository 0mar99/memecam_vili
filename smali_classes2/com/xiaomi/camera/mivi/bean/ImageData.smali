.class public Lcom/xiaomi/camera/mivi/bean/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field public format:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    .line 4
    iput v0, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    .line 5
    iput p1, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    .line 6
    iput p2, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    .line 7
    iput p3, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/xiaomi/camera/mivi/bean/ImageData;

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/xiaomi/camera/mivi/bean/ImageData;

    .line 3
    iget v2, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    iget v3, p1, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget v2, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    iget v3, p1, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    if-eq v2, v3, :cond_4

    return v1

    .line 5
    :cond_4
    iget p0, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    iget p1, p1, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageData{format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

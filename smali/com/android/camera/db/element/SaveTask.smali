.class public Lcom/android/camera/db/element/SaveTask;
.super Ljava/lang/Object;
.source "SaveTask.java"


# static fields
.field public static final PROCESS_MAX_TIME_OUT:I = 0x9c40

.field public static final TAG:Ljava/lang/String; = "SaveTask"


# instance fields
.field public applicationId:I

.field public bucketId:Ljava/lang/String;

.field public dateTaken:J

.field public height:I

.field public id:Ljava/lang/Long;

.field public jpegRotation:I

.field public mediaStoreId:Ljava/lang/Long;

.field public mimeType:Ljava/lang/String;

.field public noGaussian:I

.field public path:Ljava/lang/String;

.field public percentage:I

.field public progressAnimType:I

.field public size:J

.field public startTime:Ljava/lang/Long;

.field public status:I

.field public thumbnailPath:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/android/camera/db/element/SaveTask;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IIIIILjava/lang/String;JLjava/lang/String;JIILjava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->status:I

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->startTime:Ljava/lang/Long;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->mediaStoreId:Ljava/lang/Long;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->path:Ljava/lang/String;

    move v1, p5

    .line 7
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->status:I

    move v1, p6

    .line 8
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->percentage:I

    move v1, p7

    .line 9
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->jpegRotation:I

    move v1, p8

    .line 10
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->noGaussian:I

    move v1, p9

    .line 11
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->applicationId:I

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->thumbnailPath:Ljava/lang/String;

    move-wide v1, p11

    .line 13
    iput-wide v1, v0, Lcom/android/camera/db/element/SaveTask;->size:J

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->mimeType:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 15
    iput-wide v1, v0, Lcom/android/camera/db/element/SaveTask;->dateTaken:J

    move/from16 v1, p16

    .line 16
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->width:I

    move/from16 v1, p17

    .line 17
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->height:I

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/android/camera/db/element/SaveTask;->bucketId:Ljava/lang/String;

    move/from16 v1, p19

    .line 19
    iput v1, v0, Lcom/android/camera/db/element/SaveTask;->progressAnimType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/android/camera/db/element/SaveTask;->status:I

    .line 24
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->mediaStoreId:Ljava/lang/Long;

    .line 25
    iput-object p2, p0, Lcom/android/camera/db/element/SaveTask;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->applicationId:I

    return p0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->bucketId:Ljava/lang/String;

    return-object p0
.end method

.method public getDateTaken()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/db/element/SaveTask;->dateTaken:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->height:I

    return p0
.end method

.method public getId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->id:Ljava/lang/Long;

    return-object p0
.end method

.method public getJpegRotation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->jpegRotation:I

    return p0
.end method

.method public getMediaStoreId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->mediaStoreId:Ljava/lang/Long;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getNoGaussian()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->noGaussian:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPercentage()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->percentage:I

    return p0
.end method

.method public getProgressAnimType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->progressAnimType:I

    return p0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/db/element/SaveTask;->size:J

    return-wide v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->startTime:Ljava/lang/Long;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->status:I

    return p0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/db/element/SaveTask;->thumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->width:I

    return p0
.end method

.method public isDeparted(JI)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/db/element/SaveTask;->getApplicationId()I

    move-result v0

    const/4 v1, 0x1

    if-eq p3, v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "departed task: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveTask"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/db/element/SaveTask;->getStartTime()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x9c40

    cmp-long p0, p1, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setApplicationId(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveTask"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->applicationId:I

    return-void
.end method

.method public setBucketId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->bucketId:Ljava/lang/String;

    return-void
.end method

.method public setDateTaken(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/db/element/SaveTask;->dateTaken:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->height:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->id:Ljava/lang/Long;

    return-void
.end method

.method public setJpegRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->jpegRotation:I

    return-void
.end method

.method public setMediaStoreId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->mediaStoreId:Ljava/lang/Long;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setNoGaussian(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->noGaussian:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->path:Ljava/lang/String;

    return-void
.end method

.method public setPercentage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->percentage:I

    return-void
.end method

.method public setProgressAnimType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->progressAnimType:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/db/element/SaveTask;->size:J

    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveTask"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->startTime:Ljava/lang/Long;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->status:I

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/db/element/SaveTask;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/db/element/SaveTask;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveTask{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/db/element/SaveTask;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/db/element/SaveTask;->startTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/db/element/SaveTask;->mediaStoreId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/db/element/SaveTask;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/db/element/SaveTask;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", percentage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/db/element/SaveTask;->percentage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jpegRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/db/element/SaveTask;->jpegRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", noGaussian="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/db/element/SaveTask;->noGaussian:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", applicationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/db/element/SaveTask;->applicationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnailPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/db/element/SaveTask;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bucketId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/db/element/SaveTask;->bucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressAnimType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/db/element/SaveTask;->progressAnimType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

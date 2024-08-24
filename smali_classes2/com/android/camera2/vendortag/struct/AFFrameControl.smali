.class public Lcom/android/camera2/vendortag/struct/AFFrameControl;
.super Ljava/lang/Object;
.source "AFFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;
    }
.end annotation


# static fields
.field public static final COORDINATE_COUNT:I = 0x4

.field public static final MAX_AFGYRO_SAMPLE_SIZE:I = 0x20

.field public static final MAX_NUM_OF_STEPS:I = 0x2f

.field public static final SIZE:I = 0x398

.field public static final TAG:Ljava/lang/String; = "AFFrameControl"


# instance fields
.field public mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

.field public mTargetLensPosition:I

.field public mUseDACValue:I


# direct methods
.method public constructor <init>(IILcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mTargetLensPosition:I

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mUseDACValue:I

    .line 4
    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    return-void
.end method

.method public static getNativeSize()I
    .locals 1

    const/16 v0, 0x398

    return v0
.end method

.method public static unmarshal([B)Lcom/android/camera2/vendortag/struct/AFFrameControl;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    array-length v1, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getNativeSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    new-instance v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    invoke-direct {v1}, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;-><init>()V

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move v4, v0

    :goto_1
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_2
    const/16 v5, 0x18

    if-ge v4, v5, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 12
    iput v4, v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->sampleCount:I

    move v4, v0

    :goto_3
    const/16 v5, 0x20

    if-ge v4, v5, :cond_4

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    .line 14
    iget-object v6, v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityX:[F

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_4
    if-ge v4, v5, :cond_5

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 16
    iget-object v7, v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityY:[F

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_5
    if-ge v4, v5, :cond_6

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 18
    iget-object v7, v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityZ:[F

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 19
    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    :goto_6
    if-ge v0, v5, :cond_7

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 21
    iget-object v4, v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->timeStamp:[J

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 22
    :cond_7
    new-instance p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;-><init>(IILcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;)V

    return-object p0

    .line 23
    :cond_8
    :goto_7
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getNativeSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    array-length v0, p0

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "Expected size should be %d, but got: %d"

    .line 25
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AFFrameControl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAFGyroData()Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    return-object p0
.end method

.method public getTargetLensPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mTargetLensPosition:I

    return p0
.end method

.method public getUseDACValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mUseDACValue:I

    return p0
.end method
